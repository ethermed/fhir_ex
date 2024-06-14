defmodule Fhir.ClaimResponseSubDetail do
  use TypedStruct

  typedstruct do
    field(:_noteNumber, [Fhir.Element], default: [])
    field(:_subDetailSequence, Fhir.Element)
    field(:adjudication, [Fhir.ClaimResponseAdjudication], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:noteNumber, [:float], default: [])
    field(:reviewOutcome, Fhir.ClaimResponseReviewOutcome)
    field(:subDetailSequence, :float)
    field(:traceNumber, [Fhir.Identifier], default: [])
  end
end
