tests
testInstanceCreationAndAccessing

	| authorizationServer |

	authorizationServer := OAuth2AuthorizationServer
		providingAuthorizationGrantsAt: self authorizationEndpoint
		providingTokensAt: self tokenEndpoint.

	self assert: authorizationServer authorizationEndpoint equals: self authorizationEndpoint