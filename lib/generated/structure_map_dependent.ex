defmodule Fhir.StructureMapDependent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_name, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :parameter, [Fhir.StructureMapParameter], default: []
  end
end
