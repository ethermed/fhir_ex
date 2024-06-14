defmodule Fhir.SubstanceDefinitionRelationship do
  use TypedStruct

  typedstruct do
    field(:_amountString, Fhir.Element)
    field(:_isDefining, Fhir.Element)
    field(:amountQuantity, Fhir.Quantity)
    field(:amountRatio, Fhir.Ratio)
    field(:amountString, :string)
    field(:comparator, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:isDefining, :boolean)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:ratioHighLimitAmount, Fhir.Ratio)
    field(:source, [Fhir.Reference], default: [])
    field(:substanceDefinitionCodeableConcept, Fhir.CodeableConcept)
    field(:substanceDefinitionReference, Fhir.Reference)
    field(:type, Fhir.CodeableConcept)
  end
end
