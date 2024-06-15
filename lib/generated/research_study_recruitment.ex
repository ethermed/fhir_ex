defmodule Fhir.ResearchStudyRecruitment do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_actualNumber, Fhir.Element
        field :_targetNumber, Fhir.Element
        field :actualGroup, Fhir.Reference
        field :actualNumber, :float
        field :eligibility, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :targetNumber, :float
  end
end
