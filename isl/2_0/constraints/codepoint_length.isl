type::{
  name: constraint_field,
  fields: {
    codepoint_length: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  one_of: [
    non_negative_int,
    non_negative_int_range
  ],
}
