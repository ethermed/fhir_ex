defmodule Fhir.ImmunizationRecommendationDateCriterion do
  use TypedStruct

  typedstruct do
    field(:_value, Fhir.Element)
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:value, :datetime)
  end
end