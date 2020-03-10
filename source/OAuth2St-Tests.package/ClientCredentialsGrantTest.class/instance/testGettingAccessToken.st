tests
testGettingAccessToken

	| authorizationGrant token |

	authorizationGrant := ClientCredentialsGrant
		on: client
		configuredBy: [ :grant | grant audience: self audienceUri ].
	token := authorizationGrant issueAccessTokenUsing: ZnClient new beOneShot.
	self
		assert: token tokenType equals: 'Bearer';
		assert: token printString notEmpty;
		assert: token scope
			equals:
			'read:users read:users_app_metadata update:users_app_metadata delete:users_app_metadata create:users_app_metadata';
		assert: token expiresIn equals: 86400