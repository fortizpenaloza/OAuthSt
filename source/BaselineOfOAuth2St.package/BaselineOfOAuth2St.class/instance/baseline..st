baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'OAuth2St';
				package: 'OAuth2St-Tests' with: [ spec requires: #('OAuth2St' 'TestHTTPClient') ].
			spec
				group: 'Deployment' with: #('OAuth2St');
				group: 'Development' with: #('OAuth2St-Tests');
				group: 'default' with: #('Development') ]