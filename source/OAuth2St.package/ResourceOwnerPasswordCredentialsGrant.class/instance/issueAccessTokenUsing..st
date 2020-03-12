issuing access token
issueAccessTokenUsing: anHttpClient

	| request response |

	request := client
		httpRequestConfiguredToIssueAccessTokenApplying:
			( AddFormFieldCommand named: #grant_type pairedTo: self grantType )
				+ ( AddFormFieldCommand named: #username pairedTo: username )
				+ ( AddFormFieldCommand named: #password pairedTo: password )
				+ configurationBlock asHttpRequestCommand.

	response := request applyOn: anHttpClient.

	^ response isSuccess
		ifTrue: [ OAuth2AccessToken from: ( NeoJSONObject fromString: response contents ) ]
		ifFalse: [ | error |

			error := OAuth2Error from: ( NeoJSONObject fromString: response contents ).
			InvalidGrant signal: error description withTag: error
			]