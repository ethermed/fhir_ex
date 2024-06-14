defmodule Fhir.v6().SubstanceDefinitionRelationship do
  use TypedStruct

  typedstruct do
    field(:_amountString, Fhir.v6().Element)
    field(:_isDefining, Fhir.v6().Element)
    field(:amountQuantity, Fhir.v6().Quantity)
    field(:amountRatio, Fhir.v6().Ratio)
    field(:amountString, :string)
    field(:comparator, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:isDefining, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:ratioHighLimitAmount, Fhir.v6().Ratio)
    field(:source, [Fhir.v6().Reference], default: [])
    field(:substanceDefinitionCodeableConcept, Fhir.v6().CodeableConcept)
    field(:substanceDefinitionReference, Fhir.v6().Reference)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
