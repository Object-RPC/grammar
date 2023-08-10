grammar character;

NEWLINE: '\r'? '\n' -> skip;
WHITESOACE: [ \t]+ -> skip;

COMMA: ',' -> skip;

START_BRACKET: '(' -> skip;
END_BRACKET: ')' -> skip;

START_BRACE: '{' -> skip;
END_BRACE: '}' -> skip;

START_SQUARE_BRACKET: '[' -> skip;
END_SQUARE_BRACKET: ']' -> skip;

SPLIT: ':' -> skip;
