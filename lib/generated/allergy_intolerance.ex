defmodule Fhir.AllergyIntolerance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_category, [Fhir.Element], default: []
        field :_criticality, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_lastOccurrence, Fhir.Element
        field :_onsetDateTime, Fhir.Element
        field :_onsetString, Fhir.Element
        field :_recordedDate, Fhir.Element
        field :category, [:string], default: []
        field :clinicalStatus, Fhir.CodeableConcept
        field :code, Fhir.CodeableConcept
        field :contained, [Fhir.ResourceList], default: []
        field :criticality, :string
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :lastOccurrence, :datetime
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :onsetAge, Fhir.Age
        field :onsetDateTime, :string
        field :onsetPeriod, Fhir.Period
        field :onsetRange, Fhir.Range
        field :onsetString, :string
        field :participant, [Fhir.AllergyIntoleranceParticipant], default: []
        field :patient, Fhir.Reference
        field :reaction, [Fhir.AllergyIntoleranceReaction], default: []
        field :recordedDate, :datetime
        field :resourceType, :string, default: "AllergyIntolerance"
        field :text, Fhir.Narrative
        field :type, Fhir.CodeableConcept
        field :verificationStatus, Fhir.CodeableConcept
  end
end
