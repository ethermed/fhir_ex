defmodule Fhir.Generated.ValueSetConcept do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_display, Fhir.Generated.Element
        field :code, :string
        field :designation, [Fhir.Generated.ValueSetDesignation], default: []
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
