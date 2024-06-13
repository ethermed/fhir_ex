defmodule Fhir.Generated.CoverageCostToBeneficiary do
  use TypedStruct

  typedstruct do
    field :category, Fhir.Generated.CodeableConcept
        field :exception, [Fhir.Generated.CoverageException], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :network, Fhir.Generated.CodeableConcept
        field :term, Fhir.Generated.CodeableConcept
        field :type, Fhir.Generated.CodeableConcept
        field :unit, Fhir.Generated.CodeableConcept
        field :valueMoney, Fhir.Generated.Money
        field :valueQuantity, Fhir.Generated.Quantity
  end
end
