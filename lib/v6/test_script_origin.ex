defmodule Fhir.v6().TestScriptOrigin do
  use TypedStruct

  typedstruct do
    field(:_index, Fhir.v6().Element)
    field(:_url, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:index, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:profile, Fhir.v6().Coding)
    field(:url, :string)
  end
end
