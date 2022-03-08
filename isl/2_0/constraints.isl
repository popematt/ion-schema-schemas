type::{
  name: constraint_names,
  any_of: [
    { id: "constraints/_built_in.isl", type: constraint_names },
    { id: "constraints/_extensions.isl", type: constraint_names }
  ]
}

// constraint_fields and constraint_args are equivalent in terms of validation
// the only difference is how they are constructed.
type::{
  name: constraint_fields,
  all_of: [
    { id: "constraints/_built_in.isl", type: constraint_fields },
    { id: "constraints/_extensions.isl", type: constraint_fields }
  ]
}

type::{
  name: constraint_args,
  all_of: [
    { id: "constraints/_built_in.isl", type: constraint_args },
    { id: "constraints/_extensions.isl", type: constraint_args }
  ]
}
