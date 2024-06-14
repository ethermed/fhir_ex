defmodule Fhir.AdministrableProductDefinitionTargetSpecies do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:withdrawalPeriod, [Fhir.AdministrableProductDefinitionWithdrawalPeriod], default: [])
  end
end
