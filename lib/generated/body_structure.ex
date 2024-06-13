defmodule Fhir.Generated.BodyStructure do
  use TypedStruct

  typedstruct do
    field :_active, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :active, :boolean
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :excludedStructure, [Fhir.Generated.BodyStructureIncludedStructure], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :image, [Fhir.Generated.Attachment], default: []
        field :implicitRules, :string
        field :includedStructure, [Fhir.Generated.BodyStructureIncludedStructure], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :morphology, Fhir.Generated.CodeableConcept
        field :patient, Fhir.Generated.Reference
        field :resourceType, :string, default: "BodyStructure"
        field :text, Fhir.Generated.Narrative
  end
end
