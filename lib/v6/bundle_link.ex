defmodule Fhir.v6().BundleLink do
  use TypedStruct

  typedstruct do
    field(:_relation, Fhir.v6().Element)
    field(:_url, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:relation, :string)
    field(:url, :string)
  end
end
