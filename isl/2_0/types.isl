
type::{
  name: type_name,
  type: symbol,
  not: { id: "open_content_and_reserved_words", type: ion_schema_reserved_symbol }
  // regex?
}

type::{
  name: type_reference,
  one_of: [
    type_name,
    inline_type_definition,
    inline_type_import,
  ]
}

type::{
  name: inline_type_import,
  fields: closed::{
    id: text,
    type: type_name,
  }
}

type::{
  name: type_definition_struct,
  field_names: {
    one_of: [
      user_content_field_name,
      { id: "constraints.isl", type: constraint_names },
      { valid_values: [name, occurs] },
    ]
  },
  fields: {
    // Needed to distinguish from inline imports
    id: nothing
  }
}

type::{
  name: named_type_definition,
  type: type_definition_struct,
  // Must have `type::`, may have `private` and/or `$ion_schema`
  annotations: closed::[$ion_schema, private, required::type],
  fields: {
    name: { type: type_name, occurs: required },
    occurs: nothing
  }
}

type::{
  name: inline_type_definition,
  // Must have `type::`, may have `private` and/or `$ion_schema`
  annotations: closed::[$ion_schema, private, required::type],
  type: type_definition_struct,

  fields: {
    name: nothing,
    occurs: nothing
  }
}

type::{
  name: variably_occuring_type_definition,
  type: type_definition_struct,
  // Must have `type::`, may have `private` and/or `$ion_schema`
  annotations: closed::[$ion_schema, private, required::type],
  fields: {
    name: nothing,
    occurs: {
      occurs: optional,
      one_of: [
        {valid_values: [required, optional]},
        non_negative_int,
        non_negative_int_range,
      ]
    }
  }
}
