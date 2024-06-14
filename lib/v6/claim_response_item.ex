defmodule Fhir.v6().ClaimResponseItem do
  use TypedStruct

  typedstruct do
    field(:_itemSequence, Fhir.v6().Element)
    field(:_noteNumber, [Fhir.v6().Element], default: [])
    field(:adjudication, [Fhir.v6().ClaimResponseAdjudication], default: [])
    field(:detail, [Fhir.v6().ClaimResponseDetail], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:itemSequence, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:noteNumber, [:float], default: [])
    field(:reviewOutcome, Fhir.v6().ClaimResponseReviewOutcome)
    field(:traceNumber, [Fhir.v6().Identifier], default: [])
  end
end
