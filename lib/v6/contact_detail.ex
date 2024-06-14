defmodule Fhir.v6().ContactDetail do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:name, :string)
    field(:telecom, [Fhir.v6().ContactPoint], default: [])
  end
end
