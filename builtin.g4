grammar builtin;

import keyword;

builtinType: builtinTypeVoid | builtinTypeBoolean | builtinTypeInterger  | builtinTypeFloat | builtinTypeString;

builtinTypeVoid: KEYWORD_TYPE_VOID;
builtinTypeBoolean: KEYWORD_TYPE_BOOLEAN;
builtinTypeInterger: ( KEYWORD_TYPE_FIXED? KEYWORD_TYPE_UNSIGNED? | KEYWORD_TYPE_UNSIGNED? KEYWORD_TYPE_FIXED? ) KEYWORD_TYPE_INTEGER;
builtinTypeFloat: KEYWORD_TYPE_FLOAT;
builtinTypeString: KEYWORD_TYPE_STRING;
