instance creation
on: anOAuth2Client using: aUsername and: aPassword configuredBy: aConfigurationBlock

	^ self new
		initializeOn: anOAuth2Client
		using: aUsername
		and: aPassword
		configuredBy: aConfigurationBlock