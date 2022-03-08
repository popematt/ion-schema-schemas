type::{
  name: constraint_field,
  fields: {
    not: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  type: { id: 'types.isl', type: type_ref }
}
