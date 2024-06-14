defmodule Fhir.v6().EvidenceVariableDefinitionByTypeAndValue do
  use TypedStruct

  typedstruct do
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueId, Fhir.v6().Element)
    field(:device, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:method, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:offset, Fhir.v6().CodeableConcept)
    field(:type, Fhir.v6().CodeableConcept)
    field(:valueBoolean, :boolean)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueId, :string)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
    field(:valueReference, Fhir.v6().Reference)
  end
end
