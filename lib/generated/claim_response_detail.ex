defmodule Fhir.Generated.ClaimResponseDetail do
  use TypedStruct

  typedstruct do
    field :_detailSequence, Fhir.Generated.Element
        field :_noteNumber, [Fhir.Generated.Element], default: []
        field :adjudication, [Fhir.Generated.ClaimResponseAdjudication], default: []
        field :detailSequence, :float
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :noteNumber, [:float], default: []
        field :reviewOutcome, Fhir.Generated.ClaimResponseReviewOutcome
        field :subDetail, [Fhir.Generated.ClaimResponseSubDetail], default: []
        field :traceNumber, [Fhir.Generated.Identifier], default: []
  end
end
