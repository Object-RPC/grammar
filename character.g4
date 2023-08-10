grammar character;

NEWLINE: '\r'? '\n' -> skip;
WHITESOACE: [ \t]+ -> skip;

COMMA: ',';
COLON: ':';

START_PARENTHESE: '(';
END_PARENTHESE: ')';

START_BRACKET: '[';
END_BRACKET: ']';

START_BRACE: '{';
END_BRACE: '}';