type::{
  name: constraint_field,
  fields: {
    annotations: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  one_of:[
    { id: 'types.isl', type: type_ref },
    annotation_list
  ]
}

type::{
  name: annotation_list,
  annotations: closed::[closed, ordered, required],
  type: list,
  element: {
    annotation: closed::[optional, required],
    type: symbol,
  }
}
