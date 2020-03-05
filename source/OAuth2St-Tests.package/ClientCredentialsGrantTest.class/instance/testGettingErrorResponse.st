tests
testGettingErrorResponse

	| authorizationGrant token |

	authorizationGrant := ClientCredentialsGrant on: client.

	token := authorizationGrant issueAccessTokenUsing: ZnClient new beOneShot.

	self
		assert: token code equals: 'unauthorized_client';
		assert: token description equals: 'Grant type ''client_credentials'' not allowed for the client.';
		assert: token uri equals: 'https://auth0.com/docs/clients/client-grant-types'