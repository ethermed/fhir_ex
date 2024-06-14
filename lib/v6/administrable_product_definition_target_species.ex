defmodule Fhir.v6().AdministrableProductDefinitionTargetSpecies do
  use TypedStruct

  typedstruct do
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])

    field(:withdrawalPeriod, [Fhir.v6().AdministrableProductDefinitionWithdrawalPeriod],
      default: []
    )
  end
end
