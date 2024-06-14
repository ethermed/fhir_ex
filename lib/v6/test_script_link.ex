defmodule Fhir.v6().TestScriptLink do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_url, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:url, :string)
  end
end
