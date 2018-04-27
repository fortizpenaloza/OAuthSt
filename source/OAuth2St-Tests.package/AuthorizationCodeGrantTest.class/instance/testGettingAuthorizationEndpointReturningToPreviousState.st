tests
testGettingAuthorizationEndpointReturningToPreviousState

	| authorizationGrant authorizationUrl |

	authorizationGrant := AuthorizationCodeGrant
		on: client
		scopedTo: 'openid'
		returningTo: 'previous_state'.

	authorizationUrl := authorizationGrant authorizationUrl.

	self
		assertCollection: authorizationUrl query
		hasSameElements:
			{(#response_type -> #code).
			(#scope -> #openid).
			(#redirect_uri -> 'http://localhost:8080/sign-in').
			(#state -> #previous_state).
			(#client_id -> '7Q7lAA9XzkyMGUhqGa9RC3GcNfObXCqW')} asDictionary