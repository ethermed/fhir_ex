defmodule Fhir.Generated.FamilyMemberHistory do
  use TypedStruct

  typedstruct do
    field :_ageString, Fhir.Generated.Element
        field :_bornDate, Fhir.Generated.Element
        field :_bornString, Fhir.Generated.Element
        field :_date, Fhir.Generated.Element
        field :_deceasedBoolean, Fhir.Generated.Element
        field :_deceasedDate, Fhir.Generated.Element
        field :_deceasedString, Fhir.Generated.Element
        field :_estimatedAge, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, [Fhir.Generated.Element], default: []
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :ageAge, Fhir.Generated.Age
        field :ageRange, Fhir.Generated.Range
        field :ageString, :string
        field :bornDate, :string
        field :bornPeriod, Fhir.Generated.Period
        field :bornString, :string
        field :condition, [Fhir.Generated.FamilyMemberHistoryCondition], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :dataAbsentReason, Fhir.Generated.CodeableConcept
        field :date, :datetime
        field :deceasedAge, Fhir.Generated.Age
        field :deceasedBoolean, :boolean
        field :deceasedDate, :string
        field :deceasedRange, Fhir.Generated.Range
        field :deceasedString, :string
        field :estimatedAge, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :note, [Fhir.Generated.Annotation], default: []
        field :participant, [Fhir.Generated.FamilyMemberHistoryParticipant], default: []
        field :patient, Fhir.Generated.Reference
        field :procedure, [Fhir.Generated.FamilyMemberHistoryProcedure], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :relationship, Fhir.Generated.CodeableConcept
        field :resourceType, :string, default: "FamilyMemberHistory"
        field :sex, Fhir.Generated.CodeableConcept
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
