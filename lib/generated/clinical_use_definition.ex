defmodule Fhir.ClinicalUseDefinition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:category, [Fhir.CodeableConcept], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:contraindication, Fhir.ClinicalUseDefinitionContraindication)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:indication, Fhir.ClinicalUseDefinitionIndication)
    field(:interaction, Fhir.ClinicalUseDefinitionInteraction)
    field(:language, :string)
    field(:library, [:string], default: [])
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:population, [Fhir.Reference], default: [])
    field(:resourceType, :string, default: "ClinicalUseDefinition")
    field(:status, Fhir.CodeableConcept)
    field(:subject, [Fhir.Reference], default: [])
    field(:text, Fhir.Narrative)
    field(:type, :string)
    field(:undesirableEffect, Fhir.ClinicalUseDefinitionUndesirableEffect)
    field(:warning, Fhir.ClinicalUseDefinitionWarning)
  end
end
