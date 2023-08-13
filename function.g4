grammar function;

import type, annotation;

function: annotations functionName START_PARENTHESE ( fuctionArgument ( COMMA fuctionArgument )* )? END_PARENTHESE RIGHT_ARROW type;

fuctionArgument: fuctionArgumentName COLON type;

fuctionArgumentName: NAME;

functionName: NAME;
