type::{
  name: constraint_field,
  fields: {
    valid_values: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  one_of: [
    valid_values_range,
    {
      type: list,
      annotations: closed::[],
      element: {
        one_of:[ valid_values_range, unannotated_value ]
      },
    }
  ]
}

type::private::{
  name: unannotated_value,
  annotations: closed::[],
  type: $any
}


type::private::{
  name: valid_values_range,
  one_of: [timestamp_range, number_range]
}
