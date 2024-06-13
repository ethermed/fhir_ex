defmodule Fhir.Generated.FamilyMemberHistoryCondition do
  use TypedStruct

  typedstruct do
    field :_contributedToDeath, Fhir.Generated.Element
        field :_onsetString, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :contributedToDeath, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :onsetAge, Fhir.Generated.Age
        field :onsetPeriod, Fhir.Generated.Period
        field :onsetRange, Fhir.Generated.Range
        field :onsetString, :string
        field :outcome, Fhir.Generated.CodeableConcept
  end
end
