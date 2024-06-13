defmodule Fhir.Generated.ClaimResponseSubDetail do
  use TypedStruct

  typedstruct do
    field :_noteNumber, [Fhir.Generated.Element], default: []
        field :_subDetailSequence, Fhir.Generated.Element
        field :adjudication, [Fhir.Generated.ClaimResponseAdjudication], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :noteNumber, [:float], default: []
        field :reviewOutcome, Fhir.Generated.ClaimResponseReviewOutcome
        field :subDetailSequence, :float
        field :traceNumber, [Fhir.Generated.Identifier], default: []
  end
end
