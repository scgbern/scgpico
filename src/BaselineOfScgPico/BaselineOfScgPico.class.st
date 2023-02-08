Class {
	#name : #BaselineOfScgPico,
	#superclass : #BaselineOf,
	#category : #BaselineOfScgPico
}

{ #category : #'lepiter-store' }
BaselineOfScgPico class >> loadLepiter [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'scgbern'
				/ 'scgpico' / 'lepiter'.
	LeDatabasesRegistry default defaultLogicalDatabase reload
]

{ #category : #baseline }
BaselineOfScgPico >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'ScgPico' ]
]
