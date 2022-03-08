type::{
  name: constraint_field,
  fields: {
    timestamp_precision: {
      occurs: optional,
      type: constraint_arg,
    }
  }
}

type::{
  name: constraint_arg,
  one_of: [
    timestamp_precision_value,
    timestamp_precision_range,
  ],
}

type::{
  name: timestamp_precision_range,
  annotations: closed::[range],
  type: list,
  ordered_elements: [
    {
      one_of: [
        {
          type: timestamp_precision_value,
          annotations: closed::[exclusive],
        },
        { valid_values: [min] }
      ]
    },
    {
      one_of: [
        {
          type: timestamp_precision_value,
          annotations: closed::[exclusive],
        },
        { valid_values: [max] }
      ]
    },
  ],
}

type::{
  name: timestamp_precision_value,
  annotations: closed::[],
  valid_values: [year, month, day, hour, min, second, millisecond, nanosecond]
}
