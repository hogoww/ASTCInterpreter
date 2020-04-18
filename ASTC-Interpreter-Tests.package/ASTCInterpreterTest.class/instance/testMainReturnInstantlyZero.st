tests
testMainReturnInstantlyZero
	| cu mainFunction |

	cu := ASTCCompilationUnit new.
	mainFunction := self emptyMainFunction.
	mainFunction body addStatement: (ASTCReturn new expression: (ASTCLiteral value: 0) ;yourself).
	cu add: mainFunction.
	
	self assert: (cu acceptVisitor: interpret) equals: 0.