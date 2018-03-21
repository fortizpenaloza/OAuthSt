baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'OAuth-Model';
				package: 'OAuth2St';
				package: 'OAuth-Tests' with: [ spec requires: #('OAuth-Model' 'TestHTTPClient') ];
				package: 'OAuth2St-Tests' with: [ spec requires: #('OAuth2St' 'TestHTTPClient') ].
			spec
				group: 'Deployment' with: #('OAuth-Model' 'OAuth2St');
				group: 'Development' with: #('OAuth-Tests' 'OAuth2St-Tests');
				group: 'default' with: #('Development') ]