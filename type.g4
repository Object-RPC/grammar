grammar type;

import character;

type: NAME ('extends' NAME)* ('implements' NAME (COMMA NAME)*)? START_BRACE
	( (NAME SPLIT TYPE) | FUNCTION )*
END_BRACE
;

NAME: [_a-zA-Z] [a-zA-Z0-9]*;

FUNCTION_TYPE: TYPE START_BRACKET TYPE (COMMA TYPE)* END_BRACKET;

BUILTIN_STRING_TYPE: 'string';
BUILTIN_INTERGER_TYPE: 'fiexd'? 'unsigned'? 'integer' '8' | '16' | '32' | '64';
BUILTIN_BOOLEAN_TYPE: 'boolean';
BUILTIN_VOID_TYPE: 'void';

ARRAY_TYPE: START_SQUARE_BRACKET TYPE END_SQUARE_BRACKET '->' TYPE;
