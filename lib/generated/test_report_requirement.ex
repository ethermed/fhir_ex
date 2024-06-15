defmodule Fhir.TestReportRequirement do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_linkCanonical, Fhir.Element
        field :_linkUri, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :linkCanonical, :string
        field :linkUri, :string
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
