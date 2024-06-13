defmodule Fhir.Generated.ExplanationOfBenefitBenefitBalance do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_excluded, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :category, Fhir.Generated.CodeableConcept
        field :description, :string
        field :excluded, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :financial, [Fhir.Generated.ExplanationOfBenefitFinancial], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :network, Fhir.Generated.CodeableConcept
        field :term, Fhir.Generated.CodeableConcept
        field :unit, Fhir.Generated.CodeableConcept
  end
end
