tests
setUp

	authorizationServer := OAuth2AuthorizationServer
		redirectingResourceOwnerForAuthorizationTo: self authorizationEndpoint
		andIssuingTokensAt: self tokenEndpoint.

	client := OAuth2Client
		registeredOn: authorizationServer
		as: '7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW'
		sharing: 'fcZy-KVJvbT5DFEFfD8KEjLrPgu5dSDyJbAP7Z4gzBHRvFEqs3O_oq11kv7n3sH6'
		redirectingTo: 'http://localhost:8080/sign-in' asZnUrl