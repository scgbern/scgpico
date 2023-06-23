Class {
	#name : #BaselineOfScgPico,
	#superclass : #BaselineOf,
	#category : #BaselineOfScgPico
}

{ #category : #'lepiter-store' }
BaselineOfScgPico class >> loadLepiter [
	IceRepository registry
		detect: [ :aRepository | aRepository name = 'scgpico' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties
				addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [ self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfScgPico >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'ScgPico' ]
]
