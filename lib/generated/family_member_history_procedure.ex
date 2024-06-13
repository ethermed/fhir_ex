defmodule Fhir.Generated.FamilyMemberHistoryProcedure do
  use TypedStruct

  typedstruct do
    field :_contributedToDeath, Fhir.Generated.Element
        field :_performedDateTime, Fhir.Generated.Element
        field :_performedString, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :contributedToDeath, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :outcome, Fhir.Generated.CodeableConcept
        field :performedAge, Fhir.Generated.Age
        field :performedDateTime, :string
        field :performedPeriod, Fhir.Generated.Period
        field :performedRange, Fhir.Generated.Range
        field :performedString, :string
  end
end
