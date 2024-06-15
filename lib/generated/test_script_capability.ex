defmodule Fhir.TestScriptCapability do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_destination, Fhir.Element
        field :_link, [Fhir.Element], default: []
        field :_origin, [Fhir.Element], default: []
        field :_required, Fhir.Element
        field :_validated, Fhir.Element
        field :capabilities, :string
        field :description, :string
        field :destination, :float
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :link, [:string], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :origin, [:float], default: []
        field :required, :boolean
        field :validated, :boolean
  end
end
