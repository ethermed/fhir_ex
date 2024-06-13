defmodule Fhir.Generated.MedicationKnowledgePackaging do
  use TypedStruct

  typedstruct do
    field :cost, [Fhir.Generated.MedicationKnowledgeCost], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :packagedProduct, Fhir.Generated.Reference
  end
end
