defmodule Fhir.Generated.ImplementationGuidePage do
  use TypedStruct

  typedstruct do
    field :_generation, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_sourceMarkdown, Fhir.Generated.Element
        field :_sourceString, Fhir.Generated.Element
        field :_sourceUrl, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :generation, :string
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :page, [Fhir.Generated.ImplementationGuidePage], default: []
        field :sourceMarkdown, :string
        field :sourceString, :string
        field :sourceUrl, :string
        field :title, :string
  end
end
