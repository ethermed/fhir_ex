defmodule Fhir.Generated.ImplementationGuidePage1 do
  use TypedStruct

  typedstruct do
    field :_anchor, [Fhir.Generated.Element], default: []
        field :_name, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :anchor, [:string], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :title, :string
  end
end
