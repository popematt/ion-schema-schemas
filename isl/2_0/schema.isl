$ion_schema_2_0

type::{
  name: ion_schema_version_marker,
  type: symbol,
  valid_values: [ $ion_schema_2_0 ],
}

type::{
  name: schema_document,
  type: document,
  one_of: [
    schema_document_with_header_and_footer,
    schema_document_with_no_header_and_footer
  ],
}

type::private::{
  name: schema_document_with_header_and_footer,
  type: document,
  ordered_elements: [
    { type: top_level_open_content, occurs: any },
    { type: ion_schema_version_marker, occurs: required },
    { type: top_level_open_content, occurs: any },
    { type: schema_header, occurs: required },
    { one_of: [top_level_open_content, named_type_definition], occurs: any },
    { type: schema_footer, occurs: required },
    { type: top_level_open_content, occurs: any },
  ]
}

type::private::{
  name: schema_document_with_no_header_and_footer,
  type: document,
  ordered_elements: [
    { type: top_level_open_content, occurs: any },
    { type: ion_schema_version_marker, occurs: required },
    { one_of: [top_level_open_content, named_type_definition], occurs: any },
  ]
}


