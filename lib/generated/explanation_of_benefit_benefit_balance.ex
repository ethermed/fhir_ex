defmodule Fhir.ExplanationOfBenefitBenefitBalance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_excluded, Fhir.Element
        field :_name, Fhir.Element
        field :category, Fhir.CodeableConcept
        field :description, :string
        field :excluded, :boolean
        field :extension, [Fhir.Extension], default: []
        field :financial, [Fhir.ExplanationOfBenefitFinancial], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :network, Fhir.CodeableConcept
        field :term, Fhir.CodeableConcept
        field :unit, Fhir.CodeableConcept
  end
end
