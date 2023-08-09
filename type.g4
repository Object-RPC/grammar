grammar type;

import character;

prog: OBJECT_TYPE;

OBJECT_TYPE: 'type' NAME ('extends' NAME)* ('implements' NAME (COMMA NAME)*)? '{'
	( (NAME':' TYPE) | FUNCTION )*
'}'
;

BUILTIN_STRING_TYPE: 'string';
BUILTIN_INTERGER_TYPE: 'fiexd'? 'unsigned'? 'integer' '8' | '16' | '32' | '64';
BUILTIN_BOOLEAN_TYPE: 'boolean';
BUILTIN_VOID_TYPE: 'void';

BUILTIN_TYPE: BUILTIN_STRING_TYPE | BUILTIN_INTERGER_TYPE | BUILTIN_BOOLEAN_TYPE | BUILTIN_VOID_TYPE;

NAME: [_a-zA-Z] [a-zA-Z0-9]*;

TYPE: BUILTIN_TYPE | NAME '!'?;

FUNCTION: TYPE '(' TYPE (COMMA TYPE)* ')';

FUNCTION_TYPE: FUNCTION '->' TYPE;

ARRAY_TYPE: '[' TYPE ']' '->' TYPE;
