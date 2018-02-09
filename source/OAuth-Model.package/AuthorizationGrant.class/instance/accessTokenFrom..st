as yet unclassified
accessTokenFrom: aHTTPRequest 

	^ (STONJSON fromString: aHTTPRequest contents) at: #access_token