defmodule Fhir.AdministrableProductDefinitionTargetSpecies do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :code, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :withdrawalPeriod, [Fhir.AdministrableProductDefinitionWithdrawalPeriod], default: []
  end
end
