defmodule Fhir.TerminologyCapabilitiesVersion do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_code, Fhir.Element
        field :_compositional, Fhir.Element
        field :_isDefault, Fhir.Element
        field :_language, [Fhir.Element], default: []
        field :_property, [Fhir.Element], default: []
        field :code, :string
        field :compositional, :boolean
        field :extension, [Fhir.Extension], default: []
        field :filter, [Fhir.TerminologyCapabilitiesFilter], default: []
        field :id, :string
        field :isDefault, :boolean
        field :language, [:string], default: []
        field :modifierExtension, [Fhir.Extension], default: []
        field :property, [:string], default: []
  end
end
