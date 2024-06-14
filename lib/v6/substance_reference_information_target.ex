defmodule Fhir.v6().SubstanceReferenceInformationTarget do
  use TypedStruct

  typedstruct do
    field(:_amountString, Fhir.v6().Element)
    field(:amountQuantity, Fhir.v6().Quantity)
    field(:amountRange, Fhir.v6().Range)
    field(:amountString, :string)
    field(:amountType, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:interaction, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:organism, Fhir.v6().CodeableConcept)
    field(:organismType, Fhir.v6().CodeableConcept)
    field(:source, [Fhir.v6().Reference], default: [])
    field(:target, Fhir.v6().Identifier)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
