as yet unclassified
httpRequestConfiguredToIssueAccessTokenApplying: aBlock

	^ HttpRequest
		post: authorizationServer tokenEndpoint
		configuredUsing: [ :request | 
			( AddFormFieldCommand named: #client_id pairedTo: identifer )
				+ ( AddFormFieldCommand named: #client_secret pairedTo: secret ) + aBlock 
			]