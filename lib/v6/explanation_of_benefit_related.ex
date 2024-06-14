defmodule Fhir.v6().ExplanationOfBenefitRelated do
  use TypedStruct

  typedstruct do
    field(:claim, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reference, Fhir.v6().Identifier)
    field(:relationship, Fhir.v6().CodeableConcept)
  end
end
