defmodule Fhir.v6().CoverageEligibilityRequestItem do
  use TypedStruct

  typedstruct do
    field(:_supportingInfoSequence, [Fhir.v6().Element], default: [])
    field(:category, Fhir.v6().CodeableConcept)
    field(:detail, [Fhir.v6().Reference], default: [])
    field(:diagnosis, [Fhir.v6().CoverageEligibilityRequestDiagnosis], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:facility, Fhir.v6().Reference)
    field(:id, :string)
    field(:modifier, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:productOrService, Fhir.v6().CodeableConcept)
    field(:provider, Fhir.v6().Reference)
    field(:quantity, Fhir.v6().Quantity)
    field(:supportingInfoSequence, [:float], default: [])
    field(:unitPrice, Fhir.v6().Money)
  end
end
