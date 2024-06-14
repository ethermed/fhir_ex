defmodule Fhir.v6().SubstanceDefinitionMoiety do
  use TypedStruct

  typedstruct do
    field(:_amountString, Fhir.v6().Element)
    field(:_molecularFormula, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:amountQuantity, Fhir.v6().Quantity)
    field(:amountString, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:measurementType, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:molecularFormula, :string)
    field(:name, :string)
    field(:opticalActivity, Fhir.v6().CodeableConcept)
    field(:role, Fhir.v6().CodeableConcept)
    field(:stereochemistry, Fhir.v6().CodeableConcept)
  end
end
