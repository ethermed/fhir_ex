defmodule Fhir.Generated.StructureMapGroup do
  use TypedStruct

  typedstruct do
    field :_documentation, Fhir.Generated.Element
        field :_extends, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_typeMode, Fhir.Generated.Element
        field :documentation, :string
        field :extends, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :input, [Fhir.Generated.StructureMapInput], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :rule, [Fhir.Generated.StructureMapRule], default: []
        field :typeMode, :string
  end
end
