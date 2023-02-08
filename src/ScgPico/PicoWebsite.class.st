Class {
	#name : #PicoWebsite,
	#superclass : #Object,
	#instVars : [
		'pages'
	],
	#category : #'ScgPico-Model'
}

{ #category : #accessing }
PicoWebsite >> gtPagesFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Pages';
		priority: 10;
		items: [ pages ];
		actionUpdateButtonTooltip: 'Update item list';
		column: 'Index' 
			text: [ :eachItem :eachIndex | 
				eachIndex asRopedText foreground: Color gray ]
			width: 45;
		column: 'Page' 
			text: [ :page | page relativePath ].
]

{ #category : #accessing }
PicoWebsite >> initialize [
	| mdFiles |
	mdFiles := self scgpico allChildrenMatching: '*.md'.
	pages := mdFiles collect: [ :each | PicoPage forFile: each ]
]

{ #category : #accessing }
PicoWebsite >> scgpico [
	^ FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'scgbern'
		/ 'scgpico' / 'content'
]
