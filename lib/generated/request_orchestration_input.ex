defmodule Fhir.RequestOrchestrationInput do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_relatedData, Fhir.Element
        field :_title, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :relatedData, :string
        field :requirement, Fhir.DataRequirement
        field :title, :string
  end
end
