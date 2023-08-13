grammar variable;

import symbol, token, type;


variableDefinition:
	variableValueAssignBoolean |
	variableValueAssignInteger |
	variableValueAssignFloat |
	variableValueAssignString |
	variableValueAssignObject |
	variableValueAssignType
;

variableValueAssignBoolean: variableName COLON builtinTypeBoolean ASSIGN? variableValueBoolean?;
variableValueAssignInteger: variableName COLON builtinTypeInteger ASSIGN? variableValueInteger?;
variableValueAssignFloat: variableName COLON builtinTypeFloat ASSIGN? variableValueFloat?;
variableValueAssignString: variableName COLON builtinTypeString ASSIGN? variableValueString?;
variableValueAssignObject: variableName COLON objectType variableValueObject?;
variableValueAssignType: variableName COLON typeType ASSIGN? variableValueType?;


variableName: NAME;

variableValue: variableValueBoolean | variableValueInteger | variableValueFloat | variableValueString | variableValueObject | variableValueType;

variableValueBoolean: VALUE_BOOLEAN;
variableValueInteger: VALUE_INTEGER;
variableValueFloat: VALUE_FLOAT;
variableValueString: VALUE_STRING;
variableValueObject: START_BRACE ( variableName ASSIGN variableValue STATEMENT_SEPARATOR* )* END_BRACE;
variableValueType: type;
