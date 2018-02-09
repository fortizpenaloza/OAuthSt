tests
testGrantAccessTokenFailsWhenPasswordMissing

	| authorizationGrant |

	self
		addToExpectedResponses:
			(ZnResponse
				badRequest: String new
				entity:
					(ZnStringEntity
						json:
							'{
  "error": "invalid_request",
  "error_description": "Missing required parameter: password"
}')).

	authorizationGrant := ResourceOwnerPasswordCredentialsGrant
		using:
			(Auth0Client
				named: 'BORT Authentication API'
				on: 'mercap.auth0.com'
				identifiedBy: 'JRRQ5oYeWqgvh9wNRmJMahoK95nWIO2i'
				sharing: 'O2JAODcPv_1h0BUavNKHkvMyVKeMVF5mdDIPBIIpZVJjBqyW0ggA7J3GKxJbmTHD'
				using: [ httpClient ]).

	self
		should: [ authorizationGrant
				grantAccessTokenFor: 'f.ortiz@mercapsoftware.com'
				protectedBy: 'wrong_password'
				for: 'profile' ]
		raise: InvalidGrant