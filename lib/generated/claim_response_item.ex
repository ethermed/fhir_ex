defmodule Fhir.Generated.ClaimResponseItem do
  use TypedStruct

  typedstruct do
    field :_itemSequence, Fhir.Generated.Element
        field :_noteNumber, [Fhir.Generated.Element], default: []
        field :adjudication, [Fhir.Generated.ClaimResponseAdjudication], default: []
        field :detail, [Fhir.Generated.ClaimResponseDetail], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :itemSequence, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :noteNumber, [:float], default: []
        field :reviewOutcome, Fhir.Generated.ClaimResponseReviewOutcome
        field :traceNumber, [Fhir.Generated.Identifier], default: []
  end
end
