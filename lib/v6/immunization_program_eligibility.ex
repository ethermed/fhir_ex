defmodule Fhir.v6().ImmunizationProgramEligibility do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:program, Fhir.v6().CodeableConcept)
    field(:programStatus, Fhir.v6().CodeableConcept)
  end
end
