defmodule Fhir.v6().BodyStructure do
  use TypedStruct

  typedstruct do
    field(:_active, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:active, :boolean)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:description, :string)
    field(:excludedStructure, [Fhir.v6().BodyStructureIncludedStructure], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:image, [Fhir.v6().Attachment], default: [])
    field(:implicitRules, :string)
    field(:includedStructure, [Fhir.v6().BodyStructureIncludedStructure], default: [])
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:morphology, Fhir.v6().CodeableConcept)
    field(:patient, Fhir.v6().Reference)
    field(:resourceType, :string, default: "BodyStructure")
    field(:text, Fhir.v6().Narrative)
  end
end
