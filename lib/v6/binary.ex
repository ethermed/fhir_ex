defmodule Fhir.v6().Binary do
  use TypedStruct

  typedstruct do
    field(:_contentType, Fhir.v6().Element)
    field(:_data, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:contentType, :string)
    field(:data, :string)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:resourceType, :string, default: "Binary")
    field(:securityContext, Fhir.v6().Reference)
  end
end
