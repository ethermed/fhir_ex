defmodule Fhir.Generated.ImplementationGuideResource do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_fhirVersion, [Fhir.Generated.Element], default: []
        field :_groupingId, Fhir.Generated.Element
        field :_isExample, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :fhirVersion, [:string], default: []
        field :groupingId, :string
        field :id, :string
        field :isExample, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :profile, [:string], default: []
        field :reference, Fhir.Generated.Reference
  end
end
