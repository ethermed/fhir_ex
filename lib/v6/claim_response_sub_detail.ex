defmodule Fhir.v6().ClaimResponseSubDetail do
  use TypedStruct

  typedstruct do
    field(:_noteNumber, [Fhir.v6().Element], default: [])
    field(:_subDetailSequence, Fhir.v6().Element)
    field(:adjudication, [Fhir.v6().ClaimResponseAdjudication], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:noteNumber, [:float], default: [])
    field(:reviewOutcome, Fhir.v6().ClaimResponseReviewOutcome)
    field(:subDetailSequence, :float)
    field(:traceNumber, [Fhir.v6().Identifier], default: [])
  end
end
