defmodule Fhir.Generated.MedicationKnowledgeIndicationGuideline do
  use TypedStruct

  typedstruct do
    field :dosingGuideline, [Fhir.Generated.MedicationKnowledgeDosingGuideline], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :indication, [Fhir.Generated.CodeableReference], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
