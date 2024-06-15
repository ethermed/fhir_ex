defmodule Fhir.DetectedIssue do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_detail, Fhir.Element
        field :_identifiedDateTime, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_reference, Fhir.Element
        field :_severity, Fhir.Element
        field :_status, Fhir.Element
        field :author, Fhir.Reference
        field :category, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :detail, :string
        field :encounter, Fhir.Reference
        field :evidence, [Fhir.DetectedIssueEvidence], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifiedDateTime, :string
        field :identifiedPeriod, Fhir.Period
        field :identifier, [Fhir.Identifier], default: []
        field :implicated, [Fhir.Reference], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :mitigation, [Fhir.DetectedIssueMitigation], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :reference, :string
        field :resourceType, :string, default: "DetectedIssue"
        field :severity, :string
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
