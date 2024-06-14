defmodule Fhir.PermissionJustification do
  use TypedStruct

  typedstruct do
    field(:basis, [Fhir.CodeableConcept], default: [])
    field(:evidence, [Fhir.Reference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end