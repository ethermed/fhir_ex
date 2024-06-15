defmodule Fhir.ImplementationGuideResource do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_fhirVersion, [Fhir.Element], default: []
        field :_groupingId, Fhir.Element
        field :_isExample, Fhir.Element
        field :_name, Fhir.Element
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :fhirVersion, [:string], default: []
        field :groupingId, :string
        field :id, :string
        field :isExample, :boolean
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :profile, [:string], default: []
        field :reference, Fhir.Reference
  end
end
