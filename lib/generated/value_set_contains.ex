defmodule Fhir.Generated.ValueSetContains do
  use TypedStruct

  typedstruct do
    field :_abstract, Fhir.Generated.Element
        field :_code, Fhir.Generated.Element
        field :_display, Fhir.Generated.Element
        field :_inactive, Fhir.Generated.Element
        field :_system, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :abstract, :boolean
        field :code, :string
        field :contains, [Fhir.Generated.ValueSetContains], default: []
        field :designation, [Fhir.Generated.ValueSetDesignation], default: []
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :inactive, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :property, [Fhir.Generated.ValueSetProperty1], default: []
        field :system, :string
        field :version, :string
  end
end
