tests
testGrantAccessTokenFailsWhenWrongClientIdentifier

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
				identifiedBy: 'wrong_identifier'
				sharing: 'LW2lixghLTa55j8Kx0MM6ap5Ip17TTsp5x4PxX7wCWBp4QTtfcfX16kbA9fjQv6M'
				using: [ httpClient ]).

	self
		should: [ authorizationGrant grantAccessTokenTo: 'https://api.bort.com/' ]
		raise: InvalidGrant