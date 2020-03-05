tests
testGettingAccessToken

	| authorizationGrant audience token |

	authorizationGrant := ClientCredentialsGrant on: client.

	audience := ( 'https://willow-demo.auth0.com' asUrl addPathSegments: #('api' 'v2') ) printString
		, '/'.

	token := authorizationGrant
		issueAccessTokenApplying: [ :grant | grant audience: audience ]
		using: ZnClient new beOneShot.

	self
		assert: token tokenType equals: 'Bearer';
		assert: token scope
			equals:
			'read:users read:users_app_metadata update:users_app_metadata delete:users_app_metadata create:users_app_metadata';
		assert: token expiresIn equals: 86400