accessing
tokenURL

	^(ZnUrl new)
		scheme: #https;
		host: hostname;
		addPathSegments: #('oauth' 'token');
		yourself