defmodule Fhir.Generated.ClinicalUseDefinition do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :contraindication, Fhir.Generated.ClinicalUseDefinitionContraindication
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :indication, Fhir.Generated.ClinicalUseDefinitionIndication
        field :interaction, Fhir.Generated.ClinicalUseDefinitionInteraction
        field :language, :string
        field :library, [:string], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :population, [Fhir.Generated.Reference], default: []
        field :resourceType, :string, default: "ClinicalUseDefinition"
        field :status, Fhir.Generated.CodeableConcept
        field :subject, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :type, :string
        field :undesirableEffect, Fhir.Generated.ClinicalUseDefinitionUndesirableEffect
        field :warning, Fhir.Generated.ClinicalUseDefinitionWarning
  end
end
