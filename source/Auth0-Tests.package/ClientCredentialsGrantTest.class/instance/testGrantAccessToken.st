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
  "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6Ik1EWXdOVUUwUWpjM1FrUkJRVGt4TUVZeE5FWXpNRGRHTlVZMk1FVTVNRGhETXpVek1UTkJNUSJ9.eyJpc3MiOiJodHRwczovL21lcmNhcC5hdXRoMC5jb20vIiwic3ViIjoiQ3pVUjVGOHlYQmtXRnNKSWhzZGJWRkw1cEZqdUowVVpAY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vbWVyY2FwLmF1dGgwLmNvbS9hcGkvdjIvIiwiaWF0IjoxNTA4MzU0ODM4LCJleHAiOjE1MDgzNTQ4OTgsInNjb3BlIjoidXBkYXRlOnVzZXJzIGRlbGV0ZTp1c2VycyIsImd0eSI6ImNsaWVudC1jcmVkZW50aWFscyJ9.X4napGrc-USYHTOE3g4Xck4wbRvBza1bWFfSGZmacUlQ4ZzDW7hpFeYRGjJGIbpt2scfTQdOakXJNFhQ3mzmv64uHVjnLGAreJcXWdvPQ7deGsNT-anZ02iwI7tEx731B1Y3KNoRpH56bNqYPjdyuHm4-fyJmo65xOvx19_-WU2hTrPWYOsV7jbgumEPMEaq1AkuwH5dBXssVrm79l1aVJYAmfyLviQJAmCnp-dvb8lj1W5ZMmjetX5fEbpbbcr39jvg-dzethndZiV2hDDTWguJFWmwiAIHK6kCV-X_N7YlDIWmuTGV2uztqLIm2gotq8DIO0DvHy6JwBgB0JDTPg",
  "scope": "update:users delete:users",
  "expires_in": 60,
  "token_type": "Bearer"
}')).

	authorizationGrant := ClientCredentialsGrant
		using:
			(Auth0Client
				named: 'BORT Management API'
				on: 'mercap.auth0.com'
				identifiedBy: 'CzUR5F8yXBkWFsJIhsdbVFL5pFjuJ0UZ'
				sharing: 'O2JAODcPv_1h0BUavNKHkvMyVKeMVF5mdDIPBIIpZVJjBqyW0ggA7J3GKxJbmTHD'
				using: [ httpClient ]).

	accessToken := authorizationGrant grantAccessTokenTo: 'https://mercap.auth0.com/api/v2/'.

	self
		assert: accessToken
		equals:
			'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6Ik1EWXdOVUUwUWpjM1FrUkJRVGt4TUVZeE5FWXpNRGRHTlVZMk1FVTVNRGhETXpVek1UTkJNUSJ9.eyJpc3MiOiJodHRwczovL21lcmNhcC5hdXRoMC5jb20vIiwic3ViIjoiQ3pVUjVGOHlYQmtXRnNKSWhzZGJWRkw1cEZqdUowVVpAY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vbWVyY2FwLmF1dGgwLmNvbS9hcGkvdjIvIiwiaWF0IjoxNTA4MzU0ODM4LCJleHAiOjE1MDgzNTQ4OTgsInNjb3BlIjoidXBkYXRlOnVzZXJzIGRlbGV0ZTp1c2VycyIsImd0eSI6ImNsaWVudC1jcmVkZW50aWFscyJ9.X4napGrc-USYHTOE3g4Xck4wbRvBza1bWFfSGZmacUlQ4ZzDW7hpFeYRGjJGIbpt2scfTQdOakXJNFhQ3mzmv64uHVjnLGAreJcXWdvPQ7deGsNT-anZ02iwI7tEx731B1Y3KNoRpH56bNqYPjdyuHm4-fyJmo65xOvx19_-WU2hTrPWYOsV7jbgumEPMEaq1AkuwH5dBXssVrm79l1aVJYAmfyLviQJAmCnp-dvb8lj1W5ZMmjetX5fEbpbbcr39jvg-dzethndZiV2hDDTWguJFWmwiAIHK6kCV-X_N7YlDIWmuTGV2uztqLIm2gotq8DIO0DvHy6JwBgB0JDTPg'