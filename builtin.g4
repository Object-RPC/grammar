grammar builtin;

import keyword;

builtinType: builtinTypeVoid | builtinTypeBoolean | builtinTypeInteger | builtinTypeFloat | builtinTypeString;

builtinTypeVoid: KEYWORD_TYPE_VOID;
builtinTypeBoolean: KEYWORD_TYPE_BOOL | KEYWORD_TYPE_BOOLEAN;
builtinTypeInteger: ( KEYWORD_TYPE_NUMBER_UNSIGNED? ) SPACE* ( KEYWORD_TYPE_INT | KEYWORD_TYPE_INTEGER );
builtinTypeFloat: KEYWORD_TYPE_FLOAT;
builtinTypeString: KEYWORD_TYPE_STRING;
