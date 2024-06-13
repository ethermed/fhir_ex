defmodule Fhir.Generated.AccountRelatedAccount do
  use TypedStruct

  typedstruct do
    field :account, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :relationship, Fhir.Generated.CodeableConcept
  end
end
