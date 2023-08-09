grammar character;

NEWLINE: '\r'? '\n' -> skip;
WHITESOACE: [ \t]+ -> skip;

COMMA: ',' -> skip;
