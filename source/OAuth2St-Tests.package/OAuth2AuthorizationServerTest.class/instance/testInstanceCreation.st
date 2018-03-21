tests
testInstanceCreation

	| baseUrl authorizationEndpoint tokenEndpoint server |

	baseUrl := 'https://mercap.auth0.com' asZnUrl.
	authorizationEndpoint := baseUrl.
	tokenEndpoint := baseUrl.

	server := OAuth2AuthorizationServer
		providingAuthorizationGrantsAt: authorizationEndpoint
		providingTokensAt: tokenEndpoint.

	self assert: server authorizationEndpoint equals: authorizationEndpoint