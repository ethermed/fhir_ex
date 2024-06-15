defmodule Fhir.ImplementationGuidePage do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_generation, Fhir.Element
        field :_name, Fhir.Element
        field :_sourceMarkdown, Fhir.Element
        field :_sourceString, Fhir.Element
        field :_sourceUrl, Fhir.Element
        field :_title, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :generation, :string
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :page, [Fhir.ImplementationGuidePage], default: []
        field :sourceMarkdown, :string
        field :sourceString, :string
        field :sourceUrl, :string
        field :title, :string
  end
end
