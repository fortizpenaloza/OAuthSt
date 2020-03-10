tests
testGettingErrorResponse

	| authorizationGrant |

	authorizationGrant := ClientCredentialsGrant on: client configuredBy: [ :grant |  ].

	self
		should: [ authorizationGrant issueAccessTokenUsing: self httpClient ]
		raise: InvalidGrant
		withExceptionDo: [ :signal | 
			self
				assert: signal tag code equals: 'access_denied';
				assert: signal tag description equals: 'Non-global clients are not allowed access to APIv1';
				assert: signal tag uri equals: nil
			]