tests
testInstanceCreationAndAccessing

	| authorizationServer |

	authorizationServer := OAuth2AuthorizationServer
		redirectingResourceOwnerForAuthorizationTo: self authorizationEndpoint
		andIssuingTokensAt: self tokenEndpoint.

	self
		assert: authorizationServer authorizationEndpoint equals: self authorizationEndpoint;
		assert: authorizationServer tokenEndpoint equals: self tokenEndpoint