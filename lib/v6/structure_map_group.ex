defmodule Fhir.v6().StructureMapGroup do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.v6().Element)
    field(:_extends, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_typeMode, Fhir.v6().Element)
    field(:documentation, :string)
    field(:extends, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:input, [Fhir.v6().StructureMapInput], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:rule, [Fhir.v6().StructureMapRule], default: [])
    field(:typeMode, :string)
  end
end
