defmodule Fhir.StructureMapStructure do
  use TypedStruct

  typedstruct do
    field(:_alias, Fhir.Element)
    field(:_documentation, Fhir.Element)
    field(:_mode, Fhir.Element)
    field(:alias, :string)
    field(:documentation, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:url, :string)
  end
end
