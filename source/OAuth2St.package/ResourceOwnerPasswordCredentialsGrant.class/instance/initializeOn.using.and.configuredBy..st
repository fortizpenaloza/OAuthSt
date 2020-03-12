initialization
initializeOn: anOAuth2Client using: aUsername and: aPassword configuredBy: aConfigurationBlock

	client := anOAuth2Client.
	username := aUsername.
	password := aPassword.
	configurationBlock := aConfigurationBlock