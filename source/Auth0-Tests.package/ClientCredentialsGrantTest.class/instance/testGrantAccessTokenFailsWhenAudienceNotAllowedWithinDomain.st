tests
testGrantAccessTokenFailsWhenAudienceNotAllowedWithinDomain

	| authorizationGrant |

	self
		addToExpectedResponses:
			((ZnResponse statusCode: 403)
				entity:
					(ZnStringEntity
						json:
							'{
  "error": "access_denied",
  "error_description": "Service not enabled within domain: https://api.bort.com/"
}')).

	authorizationGrant := ClientCredentialsGrant
		using:
			(Auth0Client
				named: 'BORT Management API'
				on: 'mercap.auth0.com'
				identifiedBy: 'CzUR5F8yXBkWFsJIhsdbVFL5pFjuJ0UZ'
				sharing: 'O2JAODcPv_1h0BUavNKHkvMyVKeMVF5mdDIPBIIpZVJjBqyW0ggA7J3GKxJbmTHD'
				using: [ httpClient ]).

	self
		should: [ authorizationGrant grantAccessTokenTo: 'https://api.bort.com/' ]
		raise: InvalidGrant