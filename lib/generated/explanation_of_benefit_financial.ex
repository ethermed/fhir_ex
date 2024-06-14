defmodule Fhir.ExplanationOfBenefitFinancial do
  use TypedStruct

  typedstruct do
    field(:_allowedString, Fhir.Element)
    field(:_allowedUnsignedInt, Fhir.Element)
    field(:_usedUnsignedInt, Fhir.Element)
    field(:allowedMoney, Fhir.Money)
    field(:allowedString, :string)
    field(:allowedUnsignedInt, :float)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:usedMoney, Fhir.Money)
    field(:usedUnsignedInt, :float)
  end
end