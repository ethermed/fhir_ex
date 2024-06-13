defmodule Fhir.Generated.Condition do
  use TypedStruct

  typedstruct do
    field :_abatementDateTime, Fhir.Generated.Element
        field :_abatementString, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_onsetDateTime, Fhir.Generated.Element
        field :_onsetString, Fhir.Generated.Element
        field :_recordedDate, Fhir.Generated.Element
        field :abatementAge, Fhir.Generated.Age
        field :abatementDateTime, :string
        field :abatementPeriod, Fhir.Generated.Period
        field :abatementRange, Fhir.Generated.Range
        field :abatementString, :string
        field :bodySite, [Fhir.Generated.CodeableConcept], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :clinicalStatus, Fhir.Generated.CodeableConcept
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :encounter, Fhir.Generated.Reference
        field :evidence, [Fhir.Generated.CodeableReference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :onsetAge, Fhir.Generated.Age
        field :onsetDateTime, :string
        field :onsetPeriod, Fhir.Generated.Period
        field :onsetRange, Fhir.Generated.Range
        field :onsetString, :string
        field :participant, [Fhir.Generated.ConditionParticipant], default: []
        field :recordedDate, :datetime
        field :resourceType, :string, default: "Condition"
        field :severity, Fhir.Generated.CodeableConcept
        field :stage, [Fhir.Generated.ConditionStage], default: []
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
        field :verificationStatus, Fhir.Generated.CodeableConcept
  end
end
