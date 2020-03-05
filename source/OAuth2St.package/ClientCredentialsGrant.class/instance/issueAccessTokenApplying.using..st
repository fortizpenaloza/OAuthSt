as yet unclassified
issueAccessTokenApplying: aBlockClosure using: anHttpClient

	| r |

	r := client
		httpRequestConfiguredToIssueAccessTokenApplying:
			( AddFormFieldCommand named: #grant_type pairedTo: self grantType )
				+ aBlockClosure asHttpRequestCommand.
				
	^ r applyOn: anHttpClient 