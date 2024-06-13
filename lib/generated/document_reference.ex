defmodule Fhir.Generated.DocumentReference do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_docStatus, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :attester, [Fhir.Generated.DocumentReferenceAttester], default: []
        field :author, [Fhir.Generated.Reference], default: []
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :bodySite, [Fhir.Generated.CodeableReference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :content, [Fhir.Generated.DocumentReferenceContent], default: []
        field :context, [Fhir.Generated.Reference], default: []
        field :custodian, Fhir.Generated.Reference
        field :date, :timestamp
        field :description, :string
        field :docStatus, :string
        field :event, [Fhir.Generated.CodeableReference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :facilityType, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modality, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :practiceSetting, Fhir.Generated.CodeableConcept
        field :relatesTo, [Fhir.Generated.DocumentReferenceRelatesTo], default: []
        field :resourceType, :string, default: "DocumentReference"
        field :securityLabel, [Fhir.Generated.CodeableConcept], default: []
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
        field :version, :string
  end
end
