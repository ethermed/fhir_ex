defmodule Fhir.ClaimResponseDetail do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_detailSequence, Fhir.Element
        field :_noteNumber, [Fhir.Element], default: []
        field :adjudication, [Fhir.ClaimResponseAdjudication], default: []
        field :detailSequence, :float
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :noteNumber, [:float], default: []
        field :reviewOutcome, Fhir.ClaimResponseReviewOutcome
        field :subDetail, [Fhir.ClaimResponseSubDetail], default: []
        field :traceNumber, [Fhir.Identifier], default: []
  end
end
