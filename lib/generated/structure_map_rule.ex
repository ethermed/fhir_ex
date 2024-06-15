defmodule Fhir.StructureMapRule do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_documentation, Fhir.Element
        field :_name, Fhir.Element
        field :dependent, [Fhir.StructureMapDependent], default: []
        field :documentation, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :rule, [Fhir.StructureMapRule], default: []
        field :source, [Fhir.StructureMapSource], default: []
        field :target, [Fhir.StructureMapTarget], default: []
  end
end
