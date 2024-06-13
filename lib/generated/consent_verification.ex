defmodule Fhir.Generated.ConsentVerification do
  use TypedStruct

  typedstruct do
    field :_verificationDate, [Fhir.Generated.Element], default: []
        field :_verified, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :verificationDate, [:datetime], default: []
        field :verificationType, Fhir.Generated.CodeableConcept
        field :verified, :boolean
        field :verifiedBy, Fhir.Generated.Reference
        field :verifiedWith, Fhir.Generated.Reference
  end
end
