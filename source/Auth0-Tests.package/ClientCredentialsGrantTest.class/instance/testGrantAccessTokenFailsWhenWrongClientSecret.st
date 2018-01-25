tests
testGrantAccessTokenFailsWhenWrongClientSecret

	| authorizationGrant |

	self
		addToExpectedResponses:
			((ZnResponse statusCode: 401)
				entity:
					(ZnStringEntity
						json:
							'{
  "error": "access_denied",
  "error_description": "Unauthorized"
}')).

	authorizationGrant := ClientCredentialsGrant
		using:
			(Auth0Client
				named: 'BORT Management API'
				on: 'mercap.auth0.com'
				identifiedBy: 'CzUR5F8yXBkWFsJIhsdbVFL5pFjuJ0UZ'
				sharing: 'wrong_secret'
				using: [ httpClient ]).

	self
		should: [ authorizationGrant grantAccessTokenTo: 'https://api.bort.com/' ]
		raise: InvalidGrant