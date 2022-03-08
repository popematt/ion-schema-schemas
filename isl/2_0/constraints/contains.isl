type::{
  name: constraint_field,
  fields: {
    contains: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  type: list,
  element: $any,
}
