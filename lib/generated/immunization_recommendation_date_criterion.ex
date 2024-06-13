defmodule Fhir.Generated.ImmunizationRecommendationDateCriterion do
  use TypedStruct

  typedstruct do
    field :_value, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :value, :datetime
  end
end
