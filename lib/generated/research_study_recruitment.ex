defmodule Fhir.Generated.ResearchStudyRecruitment do
  use TypedStruct

  typedstruct do
    field :_actualNumber, Fhir.Generated.Element
        field :_targetNumber, Fhir.Generated.Element
        field :actualGroup, Fhir.Generated.Reference
        field :actualNumber, :float
        field :eligibility, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :targetNumber, :float
  end
end
