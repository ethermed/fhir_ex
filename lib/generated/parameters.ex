defmodule Fhir.Generated.Parameters do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :parameter, [Fhir.Generated.ParametersParameter], default: []
        field :resourceType, :string, default: "Parameters"
  end
end
