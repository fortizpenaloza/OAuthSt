tests
tokenEndpoint

	^ self issuerUrl addPathSegments: #('oauth' 'token')