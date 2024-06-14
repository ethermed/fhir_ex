defmodule Fhir.v6().AdministrableProductDefinitionWithdrawalPeriod do
  use TypedStruct

  typedstruct do
    field(:_supportingInformation, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:supportingInformation, :string)
    field(:tissue, Fhir.v6().CodeableConcept)
    field(:value, Fhir.v6().Quantity)
  end
end
