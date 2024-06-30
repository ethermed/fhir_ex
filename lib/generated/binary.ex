defmodule Fhir.Binary do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_contentType, Fhir.Element)
    field(:_data, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:contentType, :string)
    field(:data, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:resourceType, :string, default: "Binary")
    field(:securityContext, Fhir.Reference)
  end
end
