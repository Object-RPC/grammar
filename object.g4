grammar object;

import function, annotation;

object: annotations KEYWORD_OBJECT objectName ( KEYWORD_OBJECT_EXTENDS objectName ( COMMA objectName )* )? ( KEYWORD_OBJECT_IMPLEMENTS objectName ( COMMA objectName )* )? START_BRACE
	 objectMemers
END_BRACE
;

objectMemers: ( ( objectField | objectFunction ) STATEMENT_SEPARATOR* )*;

objectFunction: function;

objectField: annotations objectFieldName COLON type;

objectFieldName: NAME;