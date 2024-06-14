defmodule Fhir.v6().StructureMapRule do
  use TypedStruct

  typedstruct do
    field(:_documentation, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:dependent, [Fhir.v6().StructureMapDependent], default: [])
    field(:documentation, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:rule, [Fhir.v6().StructureMapRule], default: [])
    field(:source, [Fhir.v6().StructureMapSource], default: [])
    field(:target, [Fhir.v6().StructureMapTarget], default: [])
  end
end
