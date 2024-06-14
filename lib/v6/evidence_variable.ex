defmodule Fhir.v6().EvidenceVariable do
  use TypedStruct

  typedstruct do
    field(:_handling, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:handling, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:valueCategory, [Fhir.v6().CodeableConcept], default: [])
    field(:valueQuantity, [Fhir.v6().Quantity], default: [])
    field(:valueRange, [Fhir.v6().Range], default: [])
    field(:variableDefinition, Fhir.v6().Reference)
  end
end
