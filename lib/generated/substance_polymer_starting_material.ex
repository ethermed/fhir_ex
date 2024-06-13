defmodule Fhir.Generated.SubstancePolymerStartingMaterial do
  use TypedStruct

  typedstruct do
    field :_isDefining, Fhir.Generated.Element
        field :amount, Fhir.Generated.Quantity
        field :category, Fhir.Generated.CodeableConcept
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :isDefining, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
