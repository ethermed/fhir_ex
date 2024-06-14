defmodule Fhir.v6().MedicationKnowledgeStorageGuideline do
  use TypedStruct

  typedstruct do
    field(:_reference, Fhir.v6().Element)
    field(:environmentalSetting, [Fhir.v6().MedicationKnowledgeEnvironmentalSetting], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:reference, :string)
    field(:stabilityDuration, Fhir.v6().Duration)
  end
end
