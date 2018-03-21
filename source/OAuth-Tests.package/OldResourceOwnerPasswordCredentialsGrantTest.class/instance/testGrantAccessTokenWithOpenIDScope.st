tests
testGrantAccessTokenWithOpenIDScope

	| authorizationGrant accessToken |

	self
		addToExpectedResponses:
			(ZnResponse
				ok:
					(ZnStringEntity
						json:
							'{
  "access_token": "DbsHxjIdx5AY4zReVMXKyZv2uyP5H38w",
  "id_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJodHRwOi8vYm9ydC5tZXJjYXAubmV0L2Z1bGxfbmFtZSI6IkZyYW5jaXNjbyBPcnRpeiBQZcOxYWxvemEiLCJodHRwOi8vYm9ydC5tZXJjYXAubmV0L2NvbXBhbnkiOiJNZXJjYXAiLCJuaWNrbmFtZSI6ImYub3J0aXoiLCJuYW1lIjoiZi5vcnRpekBtZXJjYXBzb2Z0d2FyZS5jb20iLCJwaWN0dXJlIjoiaHR0cHM6Ly9zLmdyYXZhdGFyLmNvbS9hdmF0YXIvZjI5YzZjNDk0OTY4NTM3OTg0ZDhhNjgzZDZhMDMyNjU_cz00ODAmcj1wZyZkPWh0dHBzJTNBJTJGJTJGY2RuLmF1dGgwLmNvbSUyRmF2YXRhcnMlMkZmLnBuZyIsInVwZGF0ZWRfYXQiOiIyMDE3LTEwLTE4VDE5OjI0OjU0Ljg5NVoiLCJpc3MiOiJodHRwczovL21lcmNhcC5hdXRoMC5jb20vIiwic3ViIjoiYXV0aDB8NTk4YjUxMDRjNTAwZWI1OWE1Yjc5YWMwIiwiYXVkIjoiSlJSUTVvWWVXcWd2aDl3TlJtSk1haG9LOTVuV0lPMmkiLCJpYXQiOjE1MDgzNTQ2OTQsImV4cCI6MTUwODM5MDY5NH0.jJ-H399QcccO-bSHK8M8r4TVj-5pnsCvGvJew1J3sqY",
  "scope": "openid profile email address phone",
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
		for: 'openid'.

	self assert: accessToken equals: 'DbsHxjIdx5AY4zReVMXKyZv2uyP5H38w'