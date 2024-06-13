defmodule Fhir.Generated.ClaimRelated do
  use TypedStruct

  typedstruct do
    field :claim, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reference, Fhir.Generated.Identifier
        field :relationship, Fhir.Generated.CodeableConcept
  end
end
