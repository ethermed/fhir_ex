defmodule Fhir.Generated.AdministrableProductDefinitionWithdrawalPeriod do
  use TypedStruct

  typedstruct do
    field :_supportingInformation, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :supportingInformation, :string
        field :tissue, Fhir.Generated.CodeableConcept
        field :value, Fhir.Generated.Quantity
  end
end
