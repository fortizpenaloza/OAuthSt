tests
testGettingAccessTokenWithOpenIDScope

	| authorizationGrant token |

	authorizationGrant := ResourceOwnerPasswordCredentialsGrant
		on: client
		scopedTo: 'openid'
		using: 'f.ortiz@mercapsoftware.com'
		and: 'sQ4-Hto-HMe-gmt'.

	token := authorizationGrant accessTokenOn: ZnClient new beOneShot.

	self
		assert: token accessToken equals: 'OMwvwW0OCjTqQTsliklaWAzpgvpTK-6X';
		assert: token tokenType equals: 'Bearer';
		assert: token expiresIn equals: 86400;
		assert: token scope equals: 'openid profile email address phone';
		deny: token hasRefreshToken.