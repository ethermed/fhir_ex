defmodule Fhir.v6().ClinicalUseDefinition do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:category, [Fhir.v6().CodeableConcept], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:contraindication, Fhir.v6().ClinicalUseDefinitionContraindication)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:indication, Fhir.v6().ClinicalUseDefinitionIndication)
    field(:interaction, Fhir.v6().ClinicalUseDefinitionInteraction)
    field(:language, :string)
    field(:library, [:string], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:population, [Fhir.v6().Reference], default: [])
    field(:resourceType, :string, default: "ClinicalUseDefinition")
    field(:status, Fhir.v6().CodeableConcept)
    field(:subject, [Fhir.v6().Reference], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:type, :string)
    field(:undesirableEffect, Fhir.v6().ClinicalUseDefinitionUndesirableEffect)
    field(:warning, Fhir.v6().ClinicalUseDefinitionWarning)
  end
end
