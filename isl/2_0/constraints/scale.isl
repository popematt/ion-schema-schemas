type::{
  name: constraint_field,
  fields: {
    scale: {
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
