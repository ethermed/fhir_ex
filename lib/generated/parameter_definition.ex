defmodule Fhir.Generated.ParameterDefinition do
  use TypedStruct

  typedstruct do
    field :_documentation, Fhir.Generated.Element
        field :_max, Fhir.Generated.Element
        field :_min, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :documentation, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :max, :string
        field :min, :float
        field :name, :string
        field :profile, :string
        field :type, :string
        field :use, :string
  end
end
