initialization
initializeOn: anOAuth2Client scopedTo: aScope using: aUsername and: aPassword

	client := anOAuth2Client.
	scope := aScope "Optional".
	username := aUsername.
	password := aPassword 