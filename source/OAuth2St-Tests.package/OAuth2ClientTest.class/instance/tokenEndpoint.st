accessing
tokenEndpoint

	^ self issuerUrl addPathSegments: #('oauth' 'token')