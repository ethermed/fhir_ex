defmodule Fhir.MedicationKnowledgeIndicationGuideline do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:dosingGuideline, [Fhir.MedicationKnowledgeDosingGuideline], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:indication, [Fhir.CodeableReference], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
