defmodule Fhir.v6().MessageHeaderResponse do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:code, :string)
    field(:details, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
