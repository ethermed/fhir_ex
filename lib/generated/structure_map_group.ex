defmodule Fhir.StructureMapGroup do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_documentation, Fhir.Element)
    field(:_extends, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_typeMode, Fhir.Element)
    field(:documentation, :string)
    field(:extends, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:input, [Fhir.StructureMapInput], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:rule, [Fhir.StructureMapRule], default: [])
    field(:typeMode, :string)
  end
end
