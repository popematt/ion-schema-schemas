type::{
  name: constraint_field,
  fields: {
    field_names: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  annotations: closed::[distinct],
  type: { id: 'types.isl', type: type_ref }
}
