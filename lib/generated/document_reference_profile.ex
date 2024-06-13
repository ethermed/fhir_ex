defmodule Fhir.Generated.DocumentReferenceProfile do
  use TypedStruct

  typedstruct do
    field :_valueCanonical, Fhir.Generated.Element
        field :_valueUri, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :valueCanonical, :string
        field :valueCoding, Fhir.Generated.Coding
        field :valueUri, :string
  end
end
