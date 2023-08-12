grammar symbol;

NEWLINE: '\r'?'\n' -> skip;
SPACE: [ \t]+ -> skip;

STATEMENT_SEPARATOR: ( NEWLINE | ';' );

RIGHT_ARROW: '->';

COMMA: ',';
COLON: ':';

START_PARENTHESE: '(';
END_PARENTHESE: ')';

START_BRACKET: '[';
END_BRACKET: ']';

START_BRACE: '{';
END_BRACE: '}';
