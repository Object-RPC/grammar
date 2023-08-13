grammar type;

import symbol, keyword, builtin, token, comment;

type: ( builtinType | arrayType | fuctionType | objectType | typeType )'!'?;

typeType: KEYWORD_TYPE;

objectType: objectName;

objectName: NAME;

fuctionType: START_PARENTHESE ( fuctionTypeArgument ( COMMA fuctionTypeArgumentName )* )? END_PARENTHESE RIGHT_ARROW type;

fuctionTypeArgument: fuctionTypeArgumentName? COLON? type;

fuctionTypeArgumentName: NAME;

arrayType: START_BRACKET type END_BRACKET;
