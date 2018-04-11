tests
testGettingAccessToken

	| authorizationGrant token context |

	authorizationGrant := ResourceOwnerPasswordCredentialsGrant
		on: client
		scopedTo: 'profile'
		using: 'f.ortiz@mercapsoftware.com'
		and: 'sQ4-Hto-HMe-gmt'.

	context := AuthorizationGrantContext
		for: client 
		using: ZnClient new beOneShot.

	token := authorizationGrant accessTokenOn: context.

	self
		assert: (token at: #access_token)
			equals: 'OMwvwW0OCjTqQTsliklaWAzpgvpTK-6X';
		assert: (token at: #token_type) equals: 'Bearer';
		assert: (token at: #expires_in) equals: 86400