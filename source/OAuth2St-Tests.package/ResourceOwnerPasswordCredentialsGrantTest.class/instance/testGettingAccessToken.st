tests
testGettingAccessToken

	| authorizationGrant token |

	authorizationGrant := ResourceOwnerPasswordCredentialsGrant
		on: client
		scopedTo: 'profile'
		using: 'f.ortiz@mercapsoftware.com'
		and: 'sQ4-Hto-HMe-gmt'.

	token := authorizationGrant issueAccessTokenUsing: ZnClient new beOneShot.

	self
		assert: token accessToken 
			equals: 'OMwvwW0OCjTqQTsliklaWAzpgvpTK-6X';
		assert: token tokenType equals: 'Bearer';
		assert: token expiresIn equals: 86400;
		deny: token hasRefreshToken