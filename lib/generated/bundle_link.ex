defmodule Fhir.BundleLink do
  use TypedStruct

  typedstruct do
    field(:_relation, Fhir.Element)
    field(:_url, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:relation, :string)
    field(:url, :string)
  end
end
