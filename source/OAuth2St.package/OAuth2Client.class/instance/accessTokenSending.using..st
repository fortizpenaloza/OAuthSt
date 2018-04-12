as yet unclassified
accessTokenSending: aResourceOwnerPasswordCredentialsAccessTokenRequest using: aHttpClient

	aHttpClient url: authorizationServer tokenEndpoint.

	aResourceOwnerPasswordCredentialsAccessTokenRequest commands
		+ (BasicAuthentication with: identifer password: secret) applyOn: aHttpClient.

	^ OAuth2AccessToken
		from:
			(STONJSON
				fromString:
					(aHttpClient
						post;
						response;
						contents))