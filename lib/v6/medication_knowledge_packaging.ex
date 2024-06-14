defmodule Fhir.v6().MedicationKnowledgePackaging do
  use TypedStruct

  typedstruct do
    field(:cost, [Fhir.v6().MedicationKnowledgeCost], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:packagedProduct, Fhir.v6().Reference)
  end
end
