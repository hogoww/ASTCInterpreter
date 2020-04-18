visiting
visitBlock: aBlock
	aBlock statements do: [ :aStatement |
		aStatement isReturn 
			ifTrue: [ ^ aStatement acceptVisitor: self ]
			ifFalse: [ aStatement acceptVisitor: self ]
		].
	"by default returns null"
	^ nil