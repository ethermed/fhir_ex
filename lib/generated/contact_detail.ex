defmodule Fhir.ContactDetail do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:name, :string)
    field(:telecom, [Fhir.ContactPoint], default: [])
  end
end
