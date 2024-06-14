defmodule Fhir.v6().AdverseEventSupportingInfo do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:itemCodeableConcept, Fhir.v6().CodeableConcept)
    field(:itemReference, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
