as yet unclassified
issueAccessTokenUsing: anHttpClient

	| request response |

	request := client
		httpRequestConfiguredToIssueAccessTokenApplying:
			( AddFormFieldCommand named: #grant_type pairedTo: self grantType )
				+ configurationBlock asHttpRequestCommand.

	response := request applyOn: anHttpClient.

	^ response isSuccess
		ifTrue: [ OAuth2AccessToken from: ( NeoJSONObject fromString: response contents ) ]
		ifFalse: [ | error |

			error := OAuth2Error from: ( NeoJSONObject fromString: response contents ).
			InvalidGrant signal: error description withTag: error
			]