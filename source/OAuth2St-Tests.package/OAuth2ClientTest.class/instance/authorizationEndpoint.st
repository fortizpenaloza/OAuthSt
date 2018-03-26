accessing endpoints
authorizationEndpoint

	^ self issuerUrl addPathSegment: 'authorize'