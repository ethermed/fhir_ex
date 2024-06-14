defmodule Fhir.v6().ClinicalUseDefinitionUndesirableEffect do
  use TypedStruct

  typedstruct do
    field(:classification, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:frequencyOfOccurrence, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:symptomConditionEffect, Fhir.v6().CodeableReference)
  end
end
