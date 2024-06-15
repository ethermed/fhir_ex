defmodule Fhir.MedicationKnowledgeStorageGuideline do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_reference, Fhir.Element
        field :environmentalSetting, [Fhir.MedicationKnowledgeEnvironmentalSetting], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :reference, :string
        field :stabilityDuration, Fhir.Duration
  end
end
