defmodule Fhir.StructureMapInput do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_documentation, Fhir.Element)
    field(:_mode, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:documentation, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:type, :string)
  end
end
