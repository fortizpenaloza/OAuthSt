tests
setUp

	authorizationServer := OAuth2AuthorizationServer
		redirectingResourceOwnerForAuthorizationTo: self authorizationEndpoint
		andIssuingTokensAt: self tokenEndpoint