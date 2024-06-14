defmodule Fhir.v6().DocumentReference do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_docStatus, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_version, Fhir.v6().Element)
    field(:attester, [Fhir.v6().DocumentReferenceAttester], default: [])
    field(:author, [Fhir.v6().Reference], default: [])
    field(:basedOn, [Fhir.v6().Reference], default: [])
    field(:bodySite, [Fhir.v6().CodeableReference], default: [])
    field(:category, [Fhir.v6().CodeableConcept], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:content, [Fhir.v6().DocumentReferenceContent], default: [])
    field(:context, [Fhir.v6().Reference], default: [])
    field(:custodian, Fhir.v6().Reference)
    field(:date, :timestamp)
    field(:description, :string)
    field(:docStatus, :string)
    field(:event, [Fhir.v6().CodeableReference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:facilityType, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modality, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:practiceSetting, Fhir.v6().CodeableConcept)
    field(:relatesTo, [Fhir.v6().DocumentReferenceRelatesTo], default: [])
    field(:resourceType, :string, default: "DocumentReference")
    field(:securityLabel, [Fhir.v6().CodeableConcept], default: [])
    field(:status, :string)
    field(:subject, Fhir.v6().Reference)
    field(:text, Fhir.v6().Narrative)
    field(:type, Fhir.v6().CodeableConcept)
    field(:version, :string)
  end
end
