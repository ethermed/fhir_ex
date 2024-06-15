defmodule Fhir.FamilyMemberHistory do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_ageString, Fhir.Element
        field :_bornDate, Fhir.Element
        field :_bornString, Fhir.Element
        field :_date, Fhir.Element
        field :_deceasedBoolean, Fhir.Element
        field :_deceasedDate, Fhir.Element
        field :_deceasedString, Fhir.Element
        field :_estimatedAge, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instantiatesUri, [Fhir.Element], default: []
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :_status, Fhir.Element
        field :ageAge, Fhir.Age
        field :ageRange, Fhir.Range
        field :ageString, :string
        field :bornDate, :string
        field :bornPeriod, Fhir.Period
        field :bornString, :string
        field :condition, [Fhir.FamilyMemberHistoryCondition], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :dataAbsentReason, Fhir.CodeableConcept
        field :date, :datetime
        field :deceasedAge, Fhir.Age
        field :deceasedBoolean, :boolean
        field :deceasedDate, :string
        field :deceasedRange, Fhir.Range
        field :deceasedString, :string
        field :estimatedAge, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :note, [Fhir.Annotation], default: []
        field :participant, [Fhir.FamilyMemberHistoryParticipant], default: []
        field :patient, Fhir.Reference
        field :procedure, [Fhir.FamilyMemberHistoryProcedure], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :relationship, Fhir.CodeableConcept
        field :resourceType, :string, default: "FamilyMemberHistory"
        field :sex, Fhir.CodeableConcept
        field :status, :string
        field :text, Fhir.Narrative
  end
end
