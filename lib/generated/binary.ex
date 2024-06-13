defmodule Fhir.Generated.Binary do
  use TypedStruct

  typedstruct do
    field :_contentType, Fhir.Generated.Element
        field :_data, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :contentType, :string
        field :data, :string
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :resourceType, :string, default: "Binary"
        field :securityContext, Fhir.Generated.Reference
  end
end
