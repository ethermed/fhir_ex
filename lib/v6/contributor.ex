defmodule Fhir.v6().Contributor do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:contact, [Fhir.v6().ContactDetail], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:name, :string)
    field(:type, any())
  end
end
