defmodule Fhir.MedicationKnowledgePackaging do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:cost, [Fhir.MedicationKnowledgeCost], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:packagedProduct, Fhir.Reference)
  end
end
