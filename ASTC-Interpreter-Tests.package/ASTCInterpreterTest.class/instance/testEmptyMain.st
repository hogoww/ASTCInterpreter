tests
testEmptyMain
	| cu |

	cu := ASTCCompilationUnit new.
	cu add: self emptyMainFunction.
	
	self assert: (cu acceptVisitor: interpret) equals: nil.
	