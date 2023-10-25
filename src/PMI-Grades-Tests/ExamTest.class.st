Class {
	#name : #ExamTest,
	#superclass : #TestCase,
	#category : #'PMI-Grades-Tests'
}

{ #category : #tests }
ExamTest >> testInitialize [ 

	| exam |
	exam := Exam new.
	self assert: exam subject equals: 'Предмет'.
   self assert: exam teacherSurname equals: 'Викладач'.
   self assert: exam score equals: 0.
	self assert: exam assistantSurname equals: nil.
]

{ #category : #tests }
ExamTest >> testResultExcellent [ 
	self assert: (Exam new score:95) status equals: 'Відмінно'
]

{ #category : #tests }
ExamTest >> testResultFailing [ 
	self assert: (Exam new score:50) status equals: 'Незадовільно'
]

{ #category : #tests }
ExamTest >> testResultGood [
	self assert: (Exam new score:71) status equals: 'Добре'
]

{ #category : #tests }
ExamTest >> testResultSatisfactory [  
	self assert: (Exam new score:51) status equals: 'Задовільно'
]
