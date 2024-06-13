defmodule Fhir.Generated.ResearchSubjectProgress do
  use TypedStruct

  typedstruct do
    field :_endDate, Fhir.Generated.Element
        field :_startDate, Fhir.Generated.Element
        field :endDate, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :milestone, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reason, Fhir.Generated.CodeableConcept
        field :startDate, :datetime
        field :subjectState, Fhir.Generated.CodeableConcept
        field :type, Fhir.Generated.CodeableConcept
  end
end
