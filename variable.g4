grammar variable;

import type, token;


variableDefinition: variableName COLON variableValueAssign;

variableValueAssign: variableValueAssignBoolean | variableValueAssignInteger | variableValueAssignFloat | variableValueAssignString | variableValueAssignObject | variableValueAssignType;

variableValueAssignBoolean: builtinTypeBoolean ( ASSIGN variableValueBoolean )?;
variableValueAssignInteger: builtinTypeInteger ( ASSIGN variableValueInteger )?;
variableValueAssignFloat: builtinTypeFloat ( ASSIGN variableValueFloat )?;
variableValueAssignString: builtinTypeString ( ASSIGN variableValueString )?;
variableValueAssignObject: objectType ( START_BRACE ( variableDefinition STATEMENT_SEPARATOR* )* END_BRACE )?;
variableValueAssignType: typeType ( ASSIGN variableValueType )?;


variableName: NAME;

variableValueBoolean: VALUE_BOOLEAN;
variableValueInteger: VALUE_INTEGER;
variableValueFloat: VALUE_FLOAT;
variableValueString: VALUE_STRING;
variableValueType: type;
