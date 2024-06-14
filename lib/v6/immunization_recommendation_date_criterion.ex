defmodule Fhir.v6().ImmunizationRecommendationDateCriterion do
  use TypedStruct

  typedstruct do
    field(:_value, Fhir.v6().Element)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:value, :datetime)
  end
end
