accessing
commands

	^ (AddFormFieldCommand named: #grant_type pairedTo: 'password')
		+ (AddFormFieldCommand named: #scope pairedTo: scope)
		+ (AddFormFieldCommand named: #username pairedTo: username)
		+ (AddFormFieldCommand named: #password pairedTo: password)