defmodule Fhir.v6().StructureMapStructure do
  use TypedStruct

  typedstruct do
    field(:_alias, Fhir.v6().Element)
    field(:_documentation, Fhir.v6().Element)
    field(:_mode, Fhir.v6().Element)
    field(:alias, :string)
    field(:documentation, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:url, :string)
  end
end
