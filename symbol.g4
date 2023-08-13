grammar symbol;

NEWLINE: '\r'?'\n' -> skip;
SPACE: [ \t]+ -> skip;

STATEMENT_SEPARATOR: ( NEWLINE | ';' );

RIGHT_ARROW: '->';

ANNOTATION: '@';

COMMA: ',';
COLON: ':';

ASSIGN: '=';

START_PARENTHESE: '(';
END_PARENTHESE: ')';

START_BRACKET: '[';
END_BRACKET: ']';

START_BRACE: '{';
END_BRACE: '}';
