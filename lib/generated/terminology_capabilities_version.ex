defmodule Fhir.Generated.TerminologyCapabilitiesVersion do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_compositional, Fhir.Generated.Element
        field :_isDefault, Fhir.Generated.Element
        field :_language, [Fhir.Generated.Element], default: []
        field :_property, [Fhir.Generated.Element], default: []
        field :code, :string
        field :compositional, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :filter, [Fhir.Generated.TerminologyCapabilitiesFilter], default: []
        field :id, :string
        field :isDefault, :boolean
        field :language, [:string], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :property, [:string], default: []
  end
end
