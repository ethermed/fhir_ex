defmodule Fhir.v6().Address do
  use TypedStruct

  typedstruct do
    field(:_city, Fhir.v6().Element)
    field(:_country, Fhir.v6().Element)
    field(:_district, Fhir.v6().Element)
    field(:_line, [Fhir.v6().Element], default: [])
    field(:_postalCode, Fhir.v6().Element)
    field(:_state, Fhir.v6().Element)
    field(:_text, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:_use, Fhir.v6().Element)
    field(:city, :string)
    field(:country, :string)
    field(:district, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:line, [:string], default: [])
    field(:period, Fhir.v6().Period)
    field(:postalCode, :string)
    field(:state, :string)
    field(:text, :string)
    field(:type, any())
    field(:use, any())
  end
end
