defmodule Fhir.AdverseEventPreventiveAction do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:itemCodeableConcept, Fhir.CodeableConcept)
    field(:itemReference, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
