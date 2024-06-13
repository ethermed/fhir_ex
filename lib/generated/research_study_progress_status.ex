defmodule Fhir.Generated.ResearchStudyProgressStatus do
  use TypedStruct

  typedstruct do
    field :_actual, Fhir.Generated.Element
        field :actual, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :state, Fhir.Generated.CodeableConcept
  end
end
