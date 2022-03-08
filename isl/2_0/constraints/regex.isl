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
  type: string,
  annotations: closed::[i, m],
  // TODO: might be impossible, but regex for ISL regexes...
  // regex:
}
