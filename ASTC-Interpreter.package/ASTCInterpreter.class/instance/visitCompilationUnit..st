visiting
visitCompilationUnit: aCompilationUnit
	| main |
	program := aCompilationUnit.
	main := aCompilationUnit functionNamed: #main.
	^ main acceptVisitor: self.