defmodule Fhir.Generated.AdministrableProductDefinitionTargetSpecies do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :withdrawalPeriod, [Fhir.Generated.AdministrableProductDefinitionWithdrawalPeriod], default: []
  end
end
