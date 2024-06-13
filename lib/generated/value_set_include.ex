defmodule Fhir.Generated.ValueSetInclude do
  use TypedStruct

  typedstruct do
    field :_copyright, Fhir.Generated.Element
        field :_system, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :concept, [Fhir.Generated.ValueSetConcept], default: []
        field :copyright, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :filter, [Fhir.Generated.ValueSetFilter], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :system, :string
        field :valueSet, [:string], default: []
        field :version, :string
  end
end
