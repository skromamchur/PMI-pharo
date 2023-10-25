Class {
	#name : #GradeTest,
	#superclass : #TestCase,
	#category : #'PMI-Grades-Tests'
}

{ #category : #tests }
GradeTest >> testInitialize [ 
	| grade |
	grade := Grade new.
	self assert: grade subject equals: 'Предмет'.
   self assert: grade teacherSurname equals: 'Викладач'.
   self assert: grade score equals: 0.
]

{ #category : #tests }
GradeTest >> testResultFailing [  
	| temporary variable names |
	self assert: (Grade new score:39) status equals: 'Незараховано'
]

{ #category : #tests }
GradeTest >> testResultPassing [ 
	| temporary variable names |
	self assert: (Grade new score:89) status equals: 'Зараховано' 
]
