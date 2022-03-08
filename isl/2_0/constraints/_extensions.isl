// This is to be overriden in a higher priority authority
// for any schema systems that are using Ion
type::{
  name: constraint_names,
  type: symbol,
  valid_values: [
    // If you're using extensions, put their names here.
  ],
}

type::{
  name: constraint_args,
  fields: {
    // Example:
    // foo_constraint: { occurs: optional, type: { id: 'constraints/foo_constraint.isl', type: constraint_arg } },
  }
}

type::{
  name: constraint_fields,
  all_of: [
    // Example:
    // { id: 'constraints/foo_constraint.isl', type: constraint_field } },
  ]
}
