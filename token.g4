grammar token;

VALUE_INTEGER: BINARY | OCTAL | DECIMAL | HEXADECIMAL;
VALUE_FLOAT: DIGIT+ '.' DIGIT* | '.' DIGIT+;
VALUE_STRING: '"' .*? '"';
VALUE_BOOLEAN: 'true' | 'false';
VALUE_NULL: 'null';

fragment BINARY : '0' [bB] [01]+ ;
fragment OCTAL : '0' [oO] [0-7]* ;
fragment DECIMAL : DIGIT+;
fragment HEXADECIMAL : '0' [xX] ( [A-Fa-f] | DIGIT )+ ;

fragment DIGIT  : [0-9];

NAME: [a-zA-Z_][a-zA-Z0-9_]*;
