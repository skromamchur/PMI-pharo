Class {
	#name : #Exam,
	#superclass : #Grade,
	#instVars : [
		'assistantSurname'
	],
	#category : #'PMI-Grades'
}

{ #category : #accessing }
Exam >> assistantSurname [

	^ assistantSurname
]

{ #category : #accessing }
Exam >> assistantSurname: aString [

	assistantSurname := aString
]

{ #category : #printing }
Exam >> printOn: aStream [

	     aStream nextPutAll: 'Залік з предмету: '.
		  subject printOn: aStream.
		  aStream cr.
        aStream nextPutAll: 'Викладач: '.
		  teacherSurname printOn: aStream.
		  aStream cr.
        aStream nextPutAll: 'Асистент: '.
		  assistantSurname  printOn: aStream.
		  aStream cr.	
        aStream nextPutAll: 'Бали: '.
		  score printOn: aStream.

]

{ #category : #accessing }
Exam >> status [
       (self score >= 90) ifTrue: [^ 'Відмінно'].
       (self score >= 71 and: [self score <= 89]) ifTrue: [^ 'Добре'].
       (self score >= 51 and: [self score <= 70]) ifTrue: [^ 'Задовільно'].
       ^ 'Незадовільно'.
]
