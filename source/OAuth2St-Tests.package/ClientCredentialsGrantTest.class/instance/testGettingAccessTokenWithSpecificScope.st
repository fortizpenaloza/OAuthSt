tests
testGettingAccessTokenWithSpecificScope

	| authorizationGrant httpClient token |

	authorizationGrant := ClientCredentialsGrant
		on: client
		configuredBy: [ :grant | ( grant audience: self audienceUri ) + ( grant scope: #('read:users') ) ].
	httpClient := self httpClient.
	token := authorizationGrant issueAccessTokenUsing: httpClient.

	self
		assert: httpClient request entity contentType equals: ZnMimeType applicationFormUrlEncoded;
		assert: ( httpClient request contents at: #grant_type ) equals: authorizationGrant grantType.
	self
		assert: token tokenType equals: 'Bearer';
		assert: token scope
			equals:
			'read:users read:users_app_metadata update:users_app_metadata delete:users_app_metadata create:users_app_metadata';
		assert: token expiresIn equals: 86400