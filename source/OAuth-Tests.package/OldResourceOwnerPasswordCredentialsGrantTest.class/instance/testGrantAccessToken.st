tests
testGrantAccessToken

	| authorizationGrant accessToken |

	self
		addToExpectedResponses:
			(ZnResponse
				ok:
					(ZnStringEntity
						json:
							'{
  "access_token": "HPHXlLhFidCFH5UWgIGj8ZBPbHuUY62Z",
  "expires_in": 86400,
  "token_type": "Bearer"
}')).

	authorizationGrant := OldResourceOwnerPasswordCredentialsGrant
		using:
			(Auth0Client
				named: 'BORT Authentication API'
				on: 'mercap.auth0.com'
				identifiedBy: 'JRRQ5oYeWqgvh9wNRmJMahoK95nWIO2i'
				sharing: 'O2JAODcPv_1h0BUavNKHkvMyVKeMVF5mdDIPBIIpZVJjBqyW0ggA7J3GKxJbmTHD'
				using: [ httpClient ]).

	accessToken := authorizationGrant
		grantAccessTokenFor: 'f.ortiz@mercapsoftware.com'
		protectedBy: 'password'
		for: 'profile'.

	self assert: accessToken equals: 'HPHXlLhFidCFH5UWgIGj8ZBPbHuUY62Z'