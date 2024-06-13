defmodule Fhir.Generated.MedicationKnowledgeStorageGuideline do
  use TypedStruct

  typedstruct do
    field :_reference, Fhir.Generated.Element
        field :environmentalSetting, [Fhir.Generated.MedicationKnowledgeEnvironmentalSetting], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :reference, :string
        field :stabilityDuration, Fhir.Generated.Duration
  end
end
