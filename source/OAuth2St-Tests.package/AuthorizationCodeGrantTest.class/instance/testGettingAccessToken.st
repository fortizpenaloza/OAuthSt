tests
testGettingAccessToken

	| authorizationGrant token |

	authorizationGrant := AuthorizationCodeGrant on: client scopedTo: 'openid'.

	token := authorizationGrant accessTokenUsing: ZnClient new beOneShot.

	self
		assert: token accessToken equals: 'OMwvwW0OCjTqQTsliklaWAzpgvpTK-6X';
		assert: token tokenType equals: 'Bearer';
		assert: token expiresIn equals: 86400;
		deny: token hasRefreshToken