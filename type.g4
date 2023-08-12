grammar type;

import symbol, keyword, builtin, entity, comment;

object: KEYWORD_OBJECT objectName ( KEYWORD_OBJECT_EXTENDS objectName ( COMMA objectName )* )? ( KEYWORD_OBJECT_IMPLEMENTS objectName ( COMMA objectName )* )? START_BRACE
	 objectMemers
END_BRACE
;

objectMemers: ( ( field | function ) STATEMENT_SEPARATOR* )*;

field: objectFieldName COLON type;

objectFieldName: NAME;

function: functionName START_PARENTHESE ( fuctionArgument ( COMMA fuctionArgument )* )? END_PARENTHESE RIGHT_ARROW type;

functionName: NAME;

type: ( builtinType | arrayType | fuctionType | objectName )'!'?;

objectName: NAME;

fuctionType: START_PARENTHESE ( fuctionArgument ( COMMA fuctionArgument )* )? END_PARENTHESE RIGHT_ARROW type;

fuctionArgument: fuctionArgumentName? COLON? type;

fuctionArgumentName: NAME;

arrayType: START_BRACKET type END_BRACKET;
