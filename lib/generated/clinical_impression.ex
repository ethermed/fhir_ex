defmodule Fhir.ClinicalImpression do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_effectiveDateTime, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_protocol, [Fhir.Element], default: []
        field :_status, Fhir.Element
        field :_summary, Fhir.Element
        field :changePattern, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :date, :datetime
        field :description, :string
        field :effectiveDateTime, :string
        field :effectivePeriod, Fhir.Period
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :finding, [Fhir.ClinicalImpressionFinding], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :performer, Fhir.Reference
        field :previous, Fhir.Reference
        field :problem, [Fhir.Reference], default: []
        field :prognosisCodeableConcept, [Fhir.CodeableConcept], default: []
        field :prognosisReference, [Fhir.Reference], default: []
        field :protocol, [:string], default: []
        field :resourceType, :string, default: "ClinicalImpression"
        field :status, :string
        field :statusReason, Fhir.CodeableConcept
        field :subject, Fhir.Reference
        field :summary, :string
        field :supportingInfo, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
  end
end
