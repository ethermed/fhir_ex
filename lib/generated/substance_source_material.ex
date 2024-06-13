defmodule Fhir.Generated.SubstanceSourceMaterial do
  use TypedStruct

  typedstruct do
    field :_geographicalLocation, [Fhir.Generated.Element], default: []
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_organismName, Fhir.Generated.Element
        field :_parentSubstanceName, [Fhir.Generated.Element], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :countryOfOrigin, [Fhir.Generated.CodeableConcept], default: []
        field :developmentStage, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :fractionDescription, [Fhir.Generated.SubstanceSourceMaterialFractionDescription], default: []
        field :geographicalLocation, [:string], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :organism, Fhir.Generated.SubstanceSourceMaterialOrganism
        field :organismId, Fhir.Generated.Identifier
        field :organismName, :string
        field :parentSubstanceId, [Fhir.Generated.Identifier], default: []
        field :parentSubstanceName, [:string], default: []
        field :partDescription, [Fhir.Generated.SubstanceSourceMaterialPartDescription], default: []
        field :resourceType, :string, default: "SubstanceSourceMaterial"
        field :sourceMaterialClass, Fhir.Generated.CodeableConcept
        field :sourceMaterialState, Fhir.Generated.CodeableConcept
        field :sourceMaterialType, Fhir.Generated.CodeableConcept
        field :text, Fhir.Generated.Narrative
  end
end
