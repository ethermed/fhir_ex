defmodule Fhir.Generated.AccountBalance do
  use TypedStruct

  typedstruct do
    field :_estimate, Fhir.Generated.Element
        field :aggregate, Fhir.Generated.CodeableConcept
        field :amount, Fhir.Generated.Money
        field :estimate, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :term, Fhir.Generated.CodeableConcept
  end
end
