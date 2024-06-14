defmodule Fhir.v6().ElementDefinitionMapping do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.v6().Element)
    field(:_identity, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_map, Fhir.v6().Element)
    field(:comment, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identity, :string)
    field(:language, :string)
    field(:map, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
