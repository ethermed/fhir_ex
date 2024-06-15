defmodule Fhir.SubstanceDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_version, Fhir.Element
        field :characterization, [Fhir.SubstanceDefinitionCharacterization], default: []
        field :classification, [Fhir.CodeableConcept], default: []
        field :code, [Fhir.SubstanceDefinitionCode], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :description, :string
        field :domain, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :grade, [Fhir.CodeableConcept], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, [Fhir.Reference], default: []
        field :language, :string
        field :manufacturer, [Fhir.Reference], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :moiety, [Fhir.SubstanceDefinitionMoiety], default: []
        field :molecularWeight, [Fhir.SubstanceDefinitionMolecularWeight], default: []
        field :name, [Fhir.SubstanceDefinitionName], default: []
        field :note, [Fhir.Annotation], default: []
        field :nucleicAcid, Fhir.Reference
        field :polymer, Fhir.Reference
        field :property, [Fhir.SubstanceDefinitionProperty], default: []
        field :protein, Fhir.Reference
        field :referenceInformation, Fhir.Reference
        field :relationship, [Fhir.SubstanceDefinitionRelationship], default: []
        field :resourceType, :string, default: "SubstanceDefinition"
        field :sourceMaterial, Fhir.SubstanceDefinitionSourceMaterial
        field :status, Fhir.CodeableConcept
        field :structure, Fhir.SubstanceDefinitionStructure
        field :supplier, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :version, :string
  end
end
