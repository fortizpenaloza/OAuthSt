as yet unclassified
accessTokenOn: aHttpClient

	^ client
		accessTokenSending:
			(ResourceOwnerPasswordCredentialsAccessTokenRequest
				scopedTo: scope
				using: username
				and: password)
		using: aHttpClient