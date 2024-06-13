defmodule Fhir.Generated.CodeSystemDesignation do
  use TypedStruct

  typedstruct do
    field :_language, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :additionalUse, [Fhir.Generated.Coding], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :language, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :use, Fhir.Generated.Coding
        field :value, :string
  end
end
