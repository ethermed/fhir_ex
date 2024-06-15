defmodule Fhir.TestPlanTestData do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_sourceString, Fhir.Element
        field :content, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :sourceReference, Fhir.Reference
        field :sourceString, :string
        field :type, Fhir.Coding
  end
end
