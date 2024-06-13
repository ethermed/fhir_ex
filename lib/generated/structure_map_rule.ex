defmodule Fhir.Generated.StructureMapRule do
  use TypedStruct

  typedstruct do
    field :_documentation, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :dependent, [Fhir.Generated.StructureMapDependent], default: []
        field :documentation, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :rule, [Fhir.Generated.StructureMapRule], default: []
        field :source, [Fhir.Generated.StructureMapSource], default: []
        field :target, [Fhir.Generated.StructureMapTarget], default: []
  end
end
