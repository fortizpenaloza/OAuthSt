tests
testInstanceCreation

	| redirectionEndpoint authorizationServer anIdentifier aSecret |

	redirectionEndpoint := 'http://localhost:8080/sign-in' asZnUrl.
	authorizationServer := nil.
	anIdentifier := nil.
	aSecret := nil.

	OAuth2Client
		registeredOn: authorizationServer
		as: anIdentifier
		sharing: aSecret
		redirectingTo: redirectionEndpoint