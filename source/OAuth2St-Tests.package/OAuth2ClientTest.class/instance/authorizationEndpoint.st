accessing
authorizationEndpoint

	^ self issuerUrl addPathSegment: 'authorize'