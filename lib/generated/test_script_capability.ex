defmodule Fhir.Generated.TestScriptCapability do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_destination, Fhir.Generated.Element
        field :_link, [Fhir.Generated.Element], default: []
        field :_origin, [Fhir.Generated.Element], default: []
        field :_required, Fhir.Generated.Element
        field :_validated, Fhir.Generated.Element
        field :capabilities, :string
        field :description, :string
        field :destination, :float
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :link, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :origin, [:float], default: []
        field :required, :boolean
        field :validated, :boolean
  end
end
