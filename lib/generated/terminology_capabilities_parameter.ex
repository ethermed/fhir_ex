defmodule Fhir.TerminologyCapabilitiesParameter do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_documentation, Fhir.Element
        field :_name, Fhir.Element
        field :documentation, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
  end
end
