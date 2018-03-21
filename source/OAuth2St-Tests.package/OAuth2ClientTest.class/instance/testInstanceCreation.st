tests
testInstanceCreation

	| redirectionEndpoint authorizationServer anIdentifier aSecret |

	redirectionEndpoint := 'https://localhost:8080/sign-in'.
	authorizationServer := nil.
	anIdentifier := nil.
	aSecret := nil.

	OAuth2Client
		registeredOn: authorizationServer
		as: anIdentifier
		sharing: aSecret
		redirectingTo: redirectionEndpoint