helper-creating
emptyMainFunction
	^ ASTCFunctionDefinition new 
		declaration: 
			(ASTCFunctionDeclaration new
				type: (ASTCType new type: #int);
				id: (ASTCIdentifier id: #main);
				yourself);
		body: ASTCBlock new;
		yourself.
