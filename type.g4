grammar type;

import character;

object: 'type' NAME ('extends' NAME)? ('implements' NAME (COMMA NAME)*)? START_BRACE
	( memberField | memberFunction )*
END_BRACE
;

memberFunction: START_BRACKET type NAME (COMMA type)* END_BRACKET;
memberField: NAME COLON type;

type: ( builtinType | arrayType | fuctionType | NAME )'!'?;

builtinType: BUILTIN_STRING_TYPE | builtinTypeInterger | BUILTIN_BOOLEAN_TYPE | BUILTIN_VOID_TYPE;
fuctionType: START_BRACKET type (COMMA type)* END_BRACKET;
arrayType: START_BRACKET type END_BRACKET;

BUILTIN_STRING_TYPE: 'string';
builtinTypeInterger: ( 'fiexd'? 'unsigned'? 'integer' ( '8' | '16' | '32' | '64' ) );
BUILTIN_BOOLEAN_TYPE: 'boolean';
BUILTIN_VOID_TYPE: 'void';

NAME: [_a-zA-Z] [a-zA-Z0-9]*;

