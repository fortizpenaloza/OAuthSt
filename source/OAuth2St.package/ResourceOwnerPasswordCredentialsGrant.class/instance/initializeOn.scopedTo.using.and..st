initialization
initializeOn: anOAuth2Client scopedTo: aScope using: aUsername and: aPassword

	self toDo: 'client no tiene nada que ver acá. puedo elegir hacer el mismo contra otro cliente'.

	client := anOAuth2Client.
	scope := aScope "Optional".
	username := aUsername.
	password := aPassword 