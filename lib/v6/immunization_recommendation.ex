defmodule Fhir.v6().ImmunizationRecommendation do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:authority, Fhir.v6().Reference)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:date, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:patient, Fhir.v6().Reference)
    field(:recommendation, [Fhir.v6().ImmunizationRecommendationRecommendation], default: [])
    field(:resourceType, :string, default: "ImmunizationRecommendation")
    field(:text, Fhir.v6().Narrative)
  end
end
