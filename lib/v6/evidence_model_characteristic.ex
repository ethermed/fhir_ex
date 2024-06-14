defmodule Fhir.v6().EvidenceModelCharacteristic do
  use TypedStruct

  typedstruct do
    field(:attributeEstimate, [Fhir.v6().EvidenceAttributeEstimate], default: [])
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:value, Fhir.v6().Quantity)
    field(:variable, [Fhir.v6().EvidenceVariable], default: [])
  end
end
