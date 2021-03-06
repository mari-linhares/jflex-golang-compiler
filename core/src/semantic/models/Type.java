package semantic.models;

import semantic.exceptions.SemanticException;

public enum Type {
	INT("int"), STRING("string"), BOOL("bool"), FLOAT32("float32"), FLOAT64("float64"), UNKNOWN("unknown"), VOID("void");

	private final String name;

	private Type(String name) {
		this.name = name;
	}

	public String toString() {
		return this.name;
	}

	public static Type convertToType(String typeName) throws SemanticException {
		for (Type type : Type.values()) {
			if (type.name.equals(typeName) && Type.UNKNOWN.name != typeName && Type.VOID.name != typeName) {
				return type;
			}
		}

		throw new SemanticException("Invalid type: " + typeName);
	}
}
