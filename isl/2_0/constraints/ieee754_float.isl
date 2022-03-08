type::{
  name: constraint_field,
  fields: {
    ieee754_float: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  annotations: closed::[],
  valid_values: [binary16, binary32, binary64],
}
