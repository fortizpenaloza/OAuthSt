tests
testInstanceCreation

	| baseUrl authorizationEndpoint tokenEndpoint server |

	baseUrl := 'https://willow-demo.auth0.com' asZnUrl.
	authorizationEndpoint := baseUrl
		addPathSegment: 'authorize';
		yourself.
	tokenEndpoint := baseUrl
		addPathSegments: #('oauth' 'token');
		yourself.

	server := OAuth2AuthorizationServer
		providingAuthorizationGrantsAt: authorizationEndpoint
		providingTokensAt: tokenEndpoint.

	self assert: server authorizationEndpoint equals: authorizationEndpoint