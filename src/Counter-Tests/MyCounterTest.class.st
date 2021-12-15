"
A MyCounterTest is a test class for testing the behavior of MyCounter
"
Class {
	#name : #MyCounterTest,
	#superclass : #TestCase,
	#category : #'Counter-Tests'
}

{ #category : #tests }
MyCounterTest >> testCreatingMyCounter [
  "A test that will check if the creation of an object MyCounter is done properly"
  |tmp|
  tmp := MyCounter new.
  self deny: (tmp = nil)
]

{ #category : #'as yet unclassified' }
MyCounterTest >> testDecrementing [
  "A test that will check if method decrement is working properly.
   Test value 5. Expested result is 4."
  |counter|
  counter := MyCounter new.
  counter value: 5.
  counter decrement.
  self assert: (counter value = 4)
]

{ #category : #tests }
MyCounterTest >> testIncrementing [
  "A test that will check if method increment is working properly. 
    Test value 5. Expected result 6."
  |counter|
  counter := MyCounter new.
  counter value: 5.
  counter increment.
  self assert: (counter value = 6)
]
