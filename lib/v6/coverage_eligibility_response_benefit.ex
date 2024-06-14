defmodule Fhir.v6().CoverageEligibilityResponseBenefit do
  use TypedStruct

  typedstruct do
    field(:_allowedString, Fhir.v6().Element)
    field(:_allowedUnsignedInt, Fhir.v6().Element)
    field(:_usedString, Fhir.v6().Element)
    field(:_usedUnsignedInt, Fhir.v6().Element)
    field(:allowedMoney, Fhir.v6().Money)
    field(:allowedString, :string)
    field(:allowedUnsignedInt, :float)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:usedMoney, Fhir.v6().Money)
    field(:usedString, :string)
    field(:usedUnsignedInt, :float)
  end
end
