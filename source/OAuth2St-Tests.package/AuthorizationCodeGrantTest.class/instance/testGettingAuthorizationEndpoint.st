tests
testGettingAuthorizationEndpoint

	| baseUrl authorizationEndpoint tokenEndpoint redirectionEndpoint authorizationServer anIdentifier aSecret client httpClient authorizationGrant token authorizationUrl response |

	baseUrl := 'https://willow-demo.auth0.com' asZnUrl.
	authorizationEndpoint := baseUrl copy
		addPathSegment: 'authorize';
		yourself.
	tokenEndpoint := baseUrl copy
		addPathSegments: #('oauth' 'token');
		yourself.

	authorizationServer := OAuth2AuthorizationServer
		providingAuthorizationGrantsAt: authorizationEndpoint
		providingTokensAt: tokenEndpoint.

	redirectionEndpoint := 'http://localhost:8080/sign-in' asZnUrl.
	anIdentifier := '7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW'.
	aSecret := 'fcZy-KVJvbT5DFEFfD8KEjLrPgu5dSDyJbAP7Z4gzBHRvFEqs3O_oq11kv7n3sH6'.

	client := OAuth2Client
		registeredOn: authorizationServer
		as: anIdentifier
		sharing: aSecret
		redirectingTo: redirectionEndpoint.
	httpClient := ZnClient new beOneShot.

	authorizationGrant := AuthorizationCodeGrant on: client scopedTo: 'openid'.

	authorizationUrl := authorizationGrant authorizationUrl.

	response := ZnClient new get: authorizationUrl.

	token := authorizationGrant performOn: httpClient with: 'http://localhost:8080/sign-in?code=AUTHORIZATION_CODE&state=STATE' asZnUrl.

	self
		assert: (token at: #access_token) equals: 'OMwvwW0OCjTqQTsliklaWAzpgvpTK-6X';
		assert: (token at: #token_type) equals: 'Bearer';
		assert: (token at: #expires_in) equals: 86400