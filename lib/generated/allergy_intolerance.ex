defmodule Fhir.Generated.AllergyIntolerance do
  use TypedStruct

  typedstruct do
    field :_category, [Fhir.Generated.Element], default: []
        field :_criticality, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lastOccurrence, Fhir.Generated.Element
        field :_onsetDateTime, Fhir.Generated.Element
        field :_onsetString, Fhir.Generated.Element
        field :_recordedDate, Fhir.Generated.Element
        field :category, [:string], default: []
        field :clinicalStatus, Fhir.Generated.CodeableConcept
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :criticality, :string
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :lastOccurrence, :datetime
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :onsetAge, Fhir.Generated.Age
        field :onsetDateTime, :string
        field :onsetPeriod, Fhir.Generated.Period
        field :onsetRange, Fhir.Generated.Range
        field :onsetString, :string
        field :participant, [Fhir.Generated.AllergyIntoleranceParticipant], default: []
        field :patient, Fhir.Generated.Reference
        field :reaction, [Fhir.Generated.AllergyIntoleranceReaction], default: []
        field :recordedDate, :datetime
        field :resourceType, :string, default: "AllergyIntolerance"
        field :text, Fhir.Generated.Narrative
        field :type, Fhir.Generated.CodeableConcept
        field :verificationStatus, Fhir.Generated.CodeableConcept
  end
end
