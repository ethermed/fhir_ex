defmodule Fhir.Generated.TestReportRequirement do
  use TypedStruct

  typedstruct do
    field :_linkCanonical, Fhir.Generated.Element
        field :_linkUri, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :linkCanonical, :string
        field :linkUri, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
