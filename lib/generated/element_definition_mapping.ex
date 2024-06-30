defmodule Fhir.ElementDefinitionMapping do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_comment, Fhir.Element)
    field(:_identity, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_map, Fhir.Element)
    field(:comment, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identity, :string)
    field(:language, :string)
    field(:map, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
