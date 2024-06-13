defmodule Fhir.Generated.Expression do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_expression, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_reference, Fhir.Generated.Element
        field :description, :string
        field :expression, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :language, :string
        field :name, :string
        field :reference, :string
  end
end
