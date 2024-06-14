defmodule Fhir.v6().MedicationKnowledgeIndicationGuideline do
  use TypedStruct

  typedstruct do
    field(:dosingGuideline, [Fhir.v6().MedicationKnowledgeDosingGuideline], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:indication, [Fhir.v6().CodeableReference], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
