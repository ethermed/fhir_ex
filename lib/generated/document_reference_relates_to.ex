defmodule Fhir.Generated.DocumentReferenceRelatesTo do
  use TypedStruct

  typedstruct do
    field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :target, Fhir.Generated.Reference
  end
end
