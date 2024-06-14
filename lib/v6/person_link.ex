defmodule Fhir.v6().PersonLink do
  use TypedStruct

  typedstruct do
    field(:_assurance, Fhir.v6().Element)
    field(:assurance, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:target, Fhir.v6().Reference)
  end
end
