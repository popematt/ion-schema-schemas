type::{
  name: constraint_field,
  fields: {
    ordered_elements: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  annotations: closed::[],
  type: list,
  element: {
    one_of:[
      { id: 'types.isl', type: type_ref },
      { id: 'types.isl', type: variably_occuring_type_def }
    ]
  }
}
