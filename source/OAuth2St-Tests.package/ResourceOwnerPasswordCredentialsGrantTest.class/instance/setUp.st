tests
setUp

	authorizationServer := OAuth2AuthorizationServer
		redirectingResourceOwnerForAuthorizationTo: self authorizationEndpoint
		andIssuingTokensAt: self tokenEndpoint.

	client := OAuth2Client
		registeredOn: authorizationServer
		as: 'yzEWcVzhHW07neZl30edb938F8lzv5za'
		sharing: 'z_MmXqpVVnOqOKcmVILuN-WDe3myBIXupbpqGSOALyQnG1Awg1Kd_ZDpRp6P3B81'
		redirectingTo: 'http://localhost:8080/sign-in' asZnUrl