defmodule Fhir.Condition do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_abatementDateTime, Fhir.Element
        field :_abatementString, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_onsetDateTime, Fhir.Element
        field :_onsetString, Fhir.Element
        field :_recordedDate, Fhir.Element
        field :abatementAge, Fhir.Age
        field :abatementDateTime, :string
        field :abatementPeriod, Fhir.Period
        field :abatementRange, Fhir.Range
        field :abatementString, :string
        field :bodySite, [Fhir.CodeableConcept], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :clinicalStatus, Fhir.CodeableConcept
        field :code, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :encounter, Fhir.Reference
        field :evidence, [Fhir.CodeableReference], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :onsetAge, Fhir.Age
        field :onsetDateTime, :string
        field :onsetPeriod, Fhir.Period
        field :onsetRange, Fhir.Range
        field :onsetString, :string
        field :participant, [Fhir.ConditionParticipant], default: []
        field :recordedDate, :datetime
        field :resourceType, :string, default: "Condition"
        field :severity, Fhir.CodeableConcept
        field :stage, [Fhir.ConditionStage], default: []
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
        field :verificationStatus, Fhir.CodeableConcept
  end
end
