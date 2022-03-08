type::{
  name: constraint_field,
  fields: {
    precision: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  one_of: [
    positive_int,
    positive_int_range
  ],
}
