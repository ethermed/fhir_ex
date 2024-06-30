defmodule Fhir.DocumentReference do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_date, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_docStatus, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:_version, Fhir.Element)
    field(:attester, [Fhir.DocumentReferenceAttester], default: [])
    field(:author, [Fhir.Reference], default: [])
    field(:basedOn, [Fhir.Reference], default: [])
    field(:bodySite, [Fhir.CodeableReference], default: [])
    field(:category, [Fhir.CodeableConcept], default: [])
    field(:contained, [Fhir.ResourceList], default: [])
    field(:content, [Fhir.DocumentReferenceContent], default: [])
    field(:context, [Fhir.Reference], default: [])
    field(:custodian, Fhir.Reference)
    field(:date, :timestamp)
    field(:description, :string)
    field(:docStatus, :string)
    field(:event, [Fhir.CodeableReference], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:facilityType, Fhir.CodeableConcept)
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modality, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:practiceSetting, Fhir.CodeableConcept)
    field(:relatesTo, [Fhir.DocumentReferenceRelatesTo], default: [])
    field(:resourceType, :string, default: "DocumentReference")
    field(:securityLabel, [Fhir.CodeableConcept], default: [])
    field(:status, :string)
    field(:subject, Fhir.Reference)
    field(:text, Fhir.Narrative)
    field(:type, Fhir.CodeableConcept)
    field(:version, :string)
  end
end
