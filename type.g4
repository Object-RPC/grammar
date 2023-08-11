grammar type;

import symbol, keyword, builtin;

NAME: [a-zA-Z_][a-zA-Z0-9_]+;

functionName: NAME;

function: START_BRACKET type functionName (COMMA type)* END_BRACKET;

functions: function*;

objectFieldName: NAME;

field: objectFieldName COLON type;

fields: field*;

fuctionType: START_BRACKET type (COMMA type)* END_BRACKET;
arrayType: START_BRACKET type END_BRACKET;

type: ( builtinType | arrayType | fuctionType | NAME )'!'?;

objectName: NAME;

object: 'type' objectName ( 'extends' objectName ( COMMA objectName )* )? ( 'implements' objectName ( COMMA objectName )* )? START_BRACE
	fields | functions
END_BRACE
;
