defmodule Fhir.RiskAssessment do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_mitigation, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_status, Fhir.Element
        field :basedOn, Fhir.Reference
        field :basis, [Fhir.Reference], default: []
        field :code, Fhir.CodeableConcept
        field :condition, Fhir.Reference
        field :contained, [Fhir.ResourceList], default: []
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :method, Fhir.CodeableConcept
        field :mitigation, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :parent, Fhir.Reference
        field :performer, Fhir.Reference
        field :prediction, [Fhir.RiskAssessmentPrediction], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :resourceType, :string, default: "RiskAssessment"
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
