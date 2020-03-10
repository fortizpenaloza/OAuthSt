tests
testGettingAccessTokenWithOpenIDScope

	| authorizationGrant token |

	authorizationGrant := ResourceOwnerPasswordCredentialsGrant
		on: client
		using: 'fran@ortizpenaloza.com.ar'
		and: 'sQ4-Hto-HMe-gmt'
		configuredBy: [:grant | grant scope: #('openid') ]..

	token := authorizationGrant issueAccessTokenUsing: self httpClient.

	self
		assert: token accessToken notEmpty;
		assert: token tokenType equals: 'Bearer';
		assert: token expiresIn equals: 86400;
		assert: token scope equals: 'openid profile email address phone';
		deny: token hasRefreshToken