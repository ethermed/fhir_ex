defmodule Fhir.Generated.CodeableReference do
  use TypedStruct

  typedstruct do
    field :concept, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :reference, Fhir.Generated.Reference
  end
end
