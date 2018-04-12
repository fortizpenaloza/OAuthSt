tests
testGettingAuthorizationEndpoint

	| authorizationGrant authorizationUrl |

	authorizationGrant := AuthorizationCodeGrant on: client scopedTo: 'openid'. "state"

	authorizationUrl := authorizationGrant authorizationUrl.

	self
		assertCollection: authorizationUrl query
		hasSameElements:
			{(#response_type -> #code).
			(#scope -> #openid).
			(#redirect_uri -> 'http://localhost:8080/sign-in').
			(#state -> #xyz).
			(#client_id -> '7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW')} asDictionary