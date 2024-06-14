defmodule Fhir.PersonLink do
  use TypedStruct

  typedstruct do
    field(:_assurance, Fhir.Element)
    field(:assurance, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:target, Fhir.Reference)
  end
end
