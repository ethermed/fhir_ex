defmodule Fhir.ConsentVerification do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_verificationDate, [Fhir.Element], default: []
        field :_verified, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :verificationDate, [:datetime], default: []
        field :verificationType, Fhir.CodeableConcept
        field :verified, :boolean
        field :verifiedBy, Fhir.Reference
        field :verifiedWith, Fhir.Reference
  end
end
