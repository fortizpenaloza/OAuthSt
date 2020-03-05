initialization
setUp

	authorizationServer := OAuth2AuthorizationServer
		redirectingResourceOwnerForAuthorizationTo: self authorizationEndpoint
		andIssuingTokensAt: self tokenEndpoint.

	client := OAuth2Client
		registeredOn: authorizationServer
		as: 'B2GXs14RBmL8vygQ1KvfGfsZMf3p6LKw'
		sharing: 'rzujtYDfLDfOPScb9sxicVGdudHXwGcodLIOCXIIPNyjRxNq_kcIumTBAG6H2tP1'
		redirectingTo: 'http://localhost:8080/sign-in' asZnUrl