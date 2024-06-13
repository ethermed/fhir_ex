defmodule Fhir.Generated.DataRequirementCodeFilter do
  use TypedStruct

  typedstruct do
    field :_path, Fhir.Generated.Element
        field :_searchParam, Fhir.Generated.Element
        field :code, [Fhir.Generated.Coding], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :path, :string
        field :searchParam, :string
        field :valueSet, :string
  end
end
