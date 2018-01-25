as yet unclassified
accessTokenFrom: aHTTPRequest 

	^ (NeoJSONObject fromString: aHTTPRequest contents) at: #access_token