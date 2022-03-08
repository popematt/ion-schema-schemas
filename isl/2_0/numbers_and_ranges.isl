type::{
  name: non_negative_int,
  type: int,
  valid_values: range::[0, max],
}

type::{
  name: non_negative_int_range,
  type: list,
  annotations: closed::[range],
  ordered_elements: [
    {
      one_of: [
        { type: non_negative_int, annotations: closed::[exclusive] },
        { valid_values: [min] }
      ]
    },
    {
      one_of: [
        { type: non_negative_int, annotations: closed::[exclusive] },
        { valid_values: [max] }
      ]
    }
  ]
}

type::{
  name: positive_int,
  type: int,
  valid_values: range::[1, max],
}

type::{
  name: positive_int_range,
  type: list,
  annotations: closed::[range],
  ordered_elements: [
    {
      one_of: [
        { type: positive_int, annotations: closed::[exclusive] },
        { valid_values: [min] }
      ]
    },
    {
      one_of: [
        { type: positive_int, annotations: closed::[exclusive] },
        { valid_values: [max] }
      ]
    }
  ]
}

type::{
  name: int_range,
  type: list,
  annotations: closed::[range],
  ordered_elements: [
    {
      one_of: [
        { type: int, annotations: closed::[exclusive] },
        { valid_values: [min] }
      ]
    },
    {
      one_of: [
        { type: int, annotations: closed::[exclusive] },
        { valid_values: [max] }
      ]
    }
  ]
}

type::{
  name: number_range,
  type: list,
  annotations: closed::[range],
  ordered_elements: [
    {
      one_of: [
        {
          type: number,
          not: { valid_values: [nan, +inf, -inf] },
          annotations: closed::[exclusive]
        },
        { valid_values: [min] }
      ]
    },
    {
      one_of: [
        {
          type: number,
          not: { valid_values: [nan, +inf, -inf] },
          annotations: closed::[exclusive]
        },
        { valid_values: [max] }
      ]
    }
  ]
}

type::{
  name: timestamp_range,
  type: list,
  annotations: closed::[range],
  ordered_elements: [
    {
      one_of: [
        {
          type: timestamp,
          annotations: closed::[exclusive],
          not: { timestamp_offset: ["-00:00"] }
        },
        { valid_values: [min] }
      ]
    },
    {
      one_of: [
        {
          type: timestamp,
          annotations: closed::[exclusive],
          not: { timestamp_offset: ["-00:00"] }
        },
        { valid_values: [max] }
      ]
    }
  ]
}
