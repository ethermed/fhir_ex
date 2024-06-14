defmodule Fhir.v6().ClaimResponseDetail do
  use TypedStruct

  typedstruct do
    field(:_detailSequence, Fhir.v6().Element)
    field(:_noteNumber, [Fhir.v6().Element], default: [])
    field(:adjudication, [Fhir.v6().ClaimResponseAdjudication], default: [])
    field(:detailSequence, :float)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:noteNumber, [:float], default: [])
    field(:reviewOutcome, Fhir.v6().ClaimResponseReviewOutcome)
    field(:subDetail, [Fhir.v6().ClaimResponseSubDetail], default: [])
    field(:traceNumber, [Fhir.v6().Identifier], default: [])
  end
end
