defmodule Fhir.v6().StructureDefinitionMapping do
  use TypedStruct

  typedstruct do
    field(:_comment, Fhir.v6().Element)
    field(:_identity, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_uri, Fhir.v6().Element)
    field(:comment, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identity, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:uri, :string)
  end
end
