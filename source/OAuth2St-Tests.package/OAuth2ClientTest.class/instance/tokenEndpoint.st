accessing endpoints
tokenEndpoint

	^ self issuerUrl addPathSegments: #('oauth' 'token')