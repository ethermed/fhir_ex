defmodule Fhir.Generated.SubstanceDefinition do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :characterization, [Fhir.Generated.SubstanceDefinitionCharacterization], default: []
        field :classification, [Fhir.Generated.CodeableConcept], default: []
        field :code, [Fhir.Generated.SubstanceDefinitionCode], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :description, :string
        field :domain, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :grade, [Fhir.Generated.CodeableConcept], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, [Fhir.Generated.Reference], default: []
        field :language, :string
        field :manufacturer, [Fhir.Generated.Reference], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :moiety, [Fhir.Generated.SubstanceDefinitionMoiety], default: []
        field :molecularWeight, [Fhir.Generated.SubstanceDefinitionMolecularWeight], default: []
        field :name, [Fhir.Generated.SubstanceDefinitionName], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :nucleicAcid, Fhir.Generated.Reference
        field :polymer, Fhir.Generated.Reference
        field :property, [Fhir.Generated.SubstanceDefinitionProperty], default: []
        field :protein, Fhir.Generated.Reference
        field :referenceInformation, Fhir.Generated.Reference
        field :relationship, [Fhir.Generated.SubstanceDefinitionRelationship], default: []
        field :resourceType, :string, default: "SubstanceDefinition"
        field :sourceMaterial, Fhir.Generated.SubstanceDefinitionSourceMaterial
        field :status, Fhir.Generated.CodeableConcept
        field :structure, Fhir.Generated.SubstanceDefinitionStructure
        field :supplier, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :version, :string
  end
end
