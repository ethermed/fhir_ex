defmodule Fhir.DiagnosticReport do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_conclusion, Fhir.Element
        field :_effectiveDateTime, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_issued, Fhir.Element
        field :_language, Fhir.Element
        field :_status, Fhir.Element
        field :basedOn, [Fhir.Reference], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableConcept
        field :composition, Fhir.Reference
        field :conclusion, :string
        field :conclusionCode, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :effectiveDateTime, :string
        field :effectivePeriod, Fhir.Period
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :issued, :timestamp
        field :language, :string
        field :media, [Fhir.DiagnosticReportMedia], default: []
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :performer, [Fhir.Reference], default: []
        field :presentedForm, [Fhir.Attachment], default: []
        field :resourceType, :string, default: "DiagnosticReport"
        field :result, [Fhir.Reference], default: []
        field :resultsInterpreter, [Fhir.Reference], default: []
        field :specimen, [Fhir.Reference], default: []
        field :status, :string
        field :study, [Fhir.Reference], default: []
        field :subject, Fhir.Reference
        field :supportingInfo, [Fhir.DiagnosticReportSupportingInfo], default: []
        field :text, Fhir.Narrative
  end
end
