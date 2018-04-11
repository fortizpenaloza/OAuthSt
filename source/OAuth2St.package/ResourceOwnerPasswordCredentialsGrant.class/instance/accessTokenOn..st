as yet unclassified
accessTokenOn: anAuthorizationGrantContext

	^ anAuthorizationGrantContext
		sendHandlingErrors: (ResourceOwnerPasswordCredentialsAccessTokenRequest scopedTo: scope using: username and: password)