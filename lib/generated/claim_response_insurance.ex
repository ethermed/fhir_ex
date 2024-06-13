defmodule Fhir.Generated.ClaimResponseInsurance do
  use TypedStruct

  typedstruct do
    field :_businessArrangement, Fhir.Generated.Element
        field :_focal, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :businessArrangement, :string
        field :claimResponse, Fhir.Generated.Reference
        field :coverage, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :focal, :boolean
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :sequence, :float
  end
end
