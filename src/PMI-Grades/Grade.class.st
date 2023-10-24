Class {
	#name : #Grade,
	#superclass : #Object,
	#instVars : [
		'subject',
		'teacherSurname',
		'score'
	],
	#category : #'PMI-Grades'
}

{ #category : #initialization }
Grade >> initialize [ 
	 subject := 'Предмет'.
    teacherSurname := 'Викладач'.
    score := 0.
]

{ #category : #printing }
Grade >> printOn: aStream [

	     aStream nextPutAll: 'Залік з предмету: '.
		  subject printOn: aStream.
		  aStream cr.
        aStream nextPutAll: 'Викладач: '.
		  teacherSurname printOn: aStream.
		  aStream cr.
        aStream nextPutAll: 'Бали: '.
		  score printOn: aStream.
]

{ #category : #accessing }
Grade >> score [

	^ score
]

{ #category : #accessing }
Grade >> score: aNumber [

	score := aNumber
]

{ #category : #accessing }
Grade >> status [
^ score > 50 ifTrue: ['Зараховано'] ifFalse: ['Незараховано'].
]

{ #category : #accessing }
Grade >> subject [

	^ subject
]

{ #category : #accessing }
Grade >> subject: aString [

	subject := aString
]

{ #category : #accessing }
Grade >> teacherSurname [

	^ teacherSurname
]

{ #category : #accessing }
Grade >> teacherSurname: aString [

	teacherSurname := aString
]
