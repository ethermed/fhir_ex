defmodule Fhir.Generated.RiskAssessment do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_mitigation, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :basedOn, Fhir.Generated.Reference
        field :basis, [Fhir.Generated.Reference], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :condition, Fhir.Generated.Reference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :method, Fhir.Generated.CodeableConcept
        field :mitigation, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :parent, Fhir.Generated.Reference
        field :performer, Fhir.Generated.Reference
        field :prediction, [Fhir.Generated.RiskAssessmentPrediction], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :resourceType, :string, default: "RiskAssessment"
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
