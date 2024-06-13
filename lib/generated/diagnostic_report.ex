defmodule Fhir.Generated.DiagnosticReport do
  use TypedStruct

  typedstruct do
    field :_conclusion, Fhir.Generated.Element
        field :_effectiveDateTime, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_issued, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :composition, Fhir.Generated.Reference
        field :conclusion, :string
        field :conclusionCode, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :effectiveDateTime, :string
        field :effectivePeriod, Fhir.Generated.Period
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :issued, :timestamp
        field :language, :string
        field :media, [Fhir.Generated.DiagnosticReportMedia], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :performer, [Fhir.Generated.Reference], default: []
        field :presentedForm, [Fhir.Generated.Attachment], default: []
        field :resourceType, :string, default: "DiagnosticReport"
        field :result, [Fhir.Generated.Reference], default: []
        field :resultsInterpreter, [Fhir.Generated.Reference], default: []
        field :specimen, [Fhir.Generated.Reference], default: []
        field :status, :string
        field :study, [Fhir.Generated.Reference], default: []
        field :subject, Fhir.Generated.Reference
        field :supportingInfo, [Fhir.Generated.DiagnosticReportSupportingInfo], default: []
        field :text, Fhir.Generated.Narrative
  end
end
