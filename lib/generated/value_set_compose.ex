defmodule Fhir.Generated.ValueSetCompose do
  use TypedStruct

  typedstruct do
    field :_inactive, Fhir.Generated.Element
        field :_lockedDate, Fhir.Generated.Element
        field :_property, [Fhir.Generated.Element], default: []
        field :exclude, [Fhir.Generated.ValueSetInclude], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :inactive, :boolean
        field :include, [Fhir.Generated.ValueSetInclude], default: []
        field :lockedDate, :date
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :property, [:string], default: []
  end
end
