$ion_schema_2_0

type::{
  name: schema_header,
  // Must have the schema_header annotation
  annotations: closed::ordered::[optional::$ion_schema, required::schema_header],
  annotations: {
    ordered_elements: [
      { valid_values: [$ion_schema], occurs: optional },
      { valid_values: [schema_footer] }
    ]
  },
  // Must only have open content field names or the two allowed fields
  field_names: {
    one_of: [
      open_content_field_name,
      {valid_values: [extensions, imports]}
    ]
  },
  fields: {
    imports: {
      occurs: optional,
      type: list,
      element: header_import,
    },
    extensions: {
      occurs: optional,
      type: struct,
      fields: closed::{
        constraints: {
          occurs: optional,
          type: list,
          element: { id: "constraints.isl", type: constraint_names },
        }
      }
    }
  },
}

type::{
  name: header_import,
  type: struct,
  one_of: [
    {
      field_names: closed::{
        id: {occurs: required, type: text},
      }
    },
    {
      field_names: closed::{
        id: {occurs: required, type: text},
        type: {occurs: required, type: text},
        alias: {occurs: optional, type: text},
      }
    },
  ]
}


type::{
  name: schema_footer,
  type: struct,
  // Must have the schema_footer annotation
  // annotations: closed::ordered::[optional::$ion_schema, required::schema_footer],
  annotations: {
    ordered_elements: [
      { valid_values: [$ion_schema], occurs: optional },
      { valid_values: [schema_footer] }
    ]
  },
  // May only have open content field names
  field_names: user_content_field_name
}

