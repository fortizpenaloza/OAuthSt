configuring
httpRequestConfiguredToIssueAccessTokenApplying: aConfiguration

	^ HttpRequest
		post: authorizationServer tokenEndpoint
		configuredUsing: [ :request | ( SetBasicAuthenticationCommand with: identifer password: secret ) + aConfiguration ]