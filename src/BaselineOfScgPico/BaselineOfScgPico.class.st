Class {
	#name : #BaselineOfScgPico,
	#superclass : #BaselineOf,
	#category : #BaselineOfScgPico
}

{ #category : #accessing }
BaselineOfScgPico >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec for: #common do: [ spec package: 'ScgPico' ] ]
]
