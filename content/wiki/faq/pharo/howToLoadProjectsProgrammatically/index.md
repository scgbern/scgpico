---
Title: How do I programmatically load projects from SqueakSource?
---
#How do I programmatically load projects from SqueakSource?
- **Q How do I programmatically load projects from SqueakSource?**
- **A**
```
| mc fileToLoad version |
mc := Smalltalk at: #MCHttpRepository
	ifPresent: [:repoClass |
		repoClass location: 'www.squeaksource.com/Installer'
			user: 'squeak' password: 'squeak'].
fileToLoad := mc readableFileNames
		detect: [ :aFile | aFile beginsWith:'Installer-sd.3' ]
		ifNone: [ nil ].
version := mc versionFromFileNamed: fileToLoad.
version workingCopy repositoryGroup addRepository: mc.
mc creationTemplate: mc asCreationTemplate.
version load.
```
*NB:* Installer provides a high-level interface to specify load scripts.
