type::{
  name: constraint_field,
  fields: {
    timestamp_offset: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  annotations: closed::[],
  type: list,
  container_length: range::[1, max],
  element: distinct::{
    type: string,
    regex: "^[+-]([01][0-9]|2[0-3]):([0-5][0-9])$"
  }
}
