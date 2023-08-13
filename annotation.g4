grammar annotation;

import keyword, symbol, type;

annotations: annotationDeclaration*;

annotationDeclaration: ANNOTATION annotationName ( START_PARENTHESE annotationDeclarationArgument* END_PARENTHESE )?;

annotationDeclarationArgument: ( annotationFieldName? ASSIGN? anotationValue ( COMMA annotationFieldName? ASSIGN? anotationValue )* );

annotation: KEYWORD_ANNOTATION annotationName START_BRACE annotationField* END_BRACE;

annotationField:
	annotationFieldBoolean |
	annotationFieldInteger |
	annotationFieldFloat |
	annotationFieldString |
	annotationFieldType
;

annotationFieldBoolean: annotationFieldName COLON builtinTypeBoolean ASSIGN? annotationValueBoolean;
annotationFieldInteger: annotationFieldName COLON builtinTypeInteger ASSIGN? annotationValueInteger;
annotationFieldFloat: annotationFieldName COLON builtinTypeFloat ASSIGN? annotationValueFloat;
annotationFieldString: annotationFieldName COLON builtinTypeString ASSIGN? annotationValueString;
annotationFieldType: annotationFieldName COLON typeType ASSIGN? annotationValueType;

anotationValue: annotationValueBoolean | annotationValueInteger | annotationValueFloat | annotationValueString | annotationValueType;

annotationValueBoolean: VALUE_BOOLEAN;
annotationValueInteger: VALUE_INTEGER;
annotationValueFloat: VALUE_FLOAT;
annotationValueString: VALUE_STRING;
annotationValueType: type;

annotationFieldName: NAME;

annotationName: NAME;