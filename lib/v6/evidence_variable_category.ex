defmodule Fhir.v6().EvidenceVariableCategory do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:valueCodeableConcept, Fhir.v6().CodeableConcept)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueRange, Fhir.v6().Range)
  end
end
