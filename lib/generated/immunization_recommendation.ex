defmodule Fhir.Generated.ImmunizationRecommendation do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :authority, Fhir.Generated.Reference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :date, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :patient, Fhir.Generated.Reference
        field :recommendation, [Fhir.Generated.ImmunizationRecommendationRecommendation], default: []
        field :resourceType, :string, default: "ImmunizationRecommendation"
        field :text, Fhir.Generated.Narrative
  end
end
