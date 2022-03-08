$ion_schema_2_0

type::{
  name: user_content_field_name,
  not: ion_schema_reserved_symbol,
  regex: "^[$_].*",
}

type::{
  name: ion_schema_reserved_symbol,
  type: symbol,
  regex: "^\\$ion_schema(_.*)?",
}

type::{
  name: constraint_field_name,
  regex: "^[a-z][_0-9a-z].*$",
  not: type_fields_that_are_not_constraints,
}

type::{
  name: type_fields_that_are_not_constraints,
  // Technically, 'id' is not a type field, but a field of an inline type import
  // It cannot be a type field, or else we might be unable to distinguish an inline type from an inline import.
  valid_values: [name, occurs, id],
}

type::{
  name: top_level_open_content,
  not: {
    any_of:[
      ion_schema_reserved_symbol,
      { type: $any, annotations: [type, schema_header, schema_footer, $ion_schema] },
      { type: $any, annotations: { element: ion_schema_reserved_symbol } }
    ]
  },
}
