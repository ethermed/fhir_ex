defmodule Fhir.AdministrableProductDefinitionWithdrawalPeriod do
  use TypedStruct

  typedstruct do
    field(:_supportingInformation, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:supportingInformation, :string)
    field(:tissue, Fhir.CodeableConcept)
    field(:value, Fhir.Quantity)
  end
end
