defmodule Fhir.Generated.ClinicalImpression do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_effectiveDateTime, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_protocol, [Fhir.Generated.Element], default: []
        field :_status, Fhir.Generated.Element
        field :_summary, Fhir.Generated.Element
        field :changePattern, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :date, :datetime
        field :description, :string
        field :effectiveDateTime, :string
        field :effectivePeriod, Fhir.Generated.Period
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :finding, [Fhir.Generated.ClinicalImpressionFinding], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :performer, Fhir.Generated.Reference
        field :previous, Fhir.Generated.Reference
        field :problem, [Fhir.Generated.Reference], default: []
        field :prognosisCodeableConcept, [Fhir.Generated.CodeableConcept], default: []
        field :prognosisReference, [Fhir.Generated.Reference], default: []
        field :protocol, [:string], default: []
        field :resourceType, :string, default: "ClinicalImpression"
        field :status, :string
        field :statusReason, Fhir.Generated.CodeableConcept
        field :subject, Fhir.Generated.Reference
        field :summary, :string
        field :supportingInfo, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
  end
end
