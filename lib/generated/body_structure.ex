defmodule Fhir.BodyStructure do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_active, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:active, :boolean)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:description, :string)
    field(:excludedStructure, [Fhir.BodyStructureIncludedStructure], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:image, [Fhir.Attachment], default: [])
    field(:implicitRules, :string)
    field(:includedStructure, [Fhir.BodyStructureIncludedStructure], default: [])
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:morphology, Fhir.CodeableConcept)
    field(:patient, Fhir.Reference)
    field(:resourceType, :string, default: "BodyStructure")
    field(:text, Fhir.Narrative)
  end
end
