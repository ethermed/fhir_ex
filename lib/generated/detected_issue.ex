defmodule Fhir.Generated.DetectedIssue do
  use TypedStruct

  typedstruct do
    field :_detail, Fhir.Generated.Element
        field :_identifiedDateTime, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_reference, Fhir.Generated.Element
        field :_severity, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :author, Fhir.Generated.Reference
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :detail, :string
        field :encounter, Fhir.Generated.Reference
        field :evidence, [Fhir.Generated.DetectedIssueEvidence], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifiedDateTime, :string
        field :identifiedPeriod, Fhir.Generated.Period
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicated, [Fhir.Generated.Reference], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :mitigation, [Fhir.Generated.DetectedIssueMitigation], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reference, :string
        field :resourceType, :string, default: "DetectedIssue"
        field :severity, :string
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
