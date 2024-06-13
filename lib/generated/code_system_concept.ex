defmodule Fhir.Generated.CodeSystemConcept do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_definition, Fhir.Generated.Element
        field :_display, Fhir.Generated.Element
        field :code, :string
        field :concept, [Fhir.Generated.CodeSystemConcept], default: []
        field :definition, :string
        field :designation, [Fhir.Generated.CodeSystemDesignation], default: []
        field :display, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :property, [Fhir.Generated.CodeSystemProperty1], default: []
  end
end
