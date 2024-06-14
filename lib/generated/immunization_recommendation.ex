defmodule Fhir.ImmunizationRecommendation do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:authority, Fhir.Reference)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:date, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:patient, Fhir.Reference)
    field(:recommendation, [Fhir.ImmunizationRecommendationRecommendation], default: [])
    field(:resourceType, :string, default: "ImmunizationRecommendation")
    field(:text, Fhir.Narrative)
  end
end
