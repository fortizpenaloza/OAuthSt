initialization
setUp

	authorizationServer := OAuth2AuthorizationServer
		redirectingResourceOwnerForAuthorizationTo: self authorizationEndpoint
		andIssuingTokensAt: self tokenEndpoint.

	client := OAuth2Client
		registeredOn: authorizationServer
		as: 'q2sttiUzHCGIw8YUBYUfukGzsOHNqreb'
		sharing: 'vKaSPV-W4lU3nhTe0U33YeUfloCEt8xjAxytFmw7E66gFA-R22rSPlLN1nEDiffz'
		redirectingTo: 'http://localhost:8080/sign-in' asZnUrl