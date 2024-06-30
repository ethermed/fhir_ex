defmodule Fhir.ClaimResponseItem do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_itemSequence, Fhir.Element)
    field(:_noteNumber, [Fhir.Element], default: [])
    field(:adjudication, [Fhir.ClaimResponseAdjudication], default: [])
    field(:detail, [Fhir.ClaimResponseDetail], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:itemSequence, :float)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:noteNumber, [:float], default: [])
    field(:reviewOutcome, Fhir.ClaimResponseReviewOutcome)
    field(:traceNumber, [Fhir.Identifier], default: [])
  end
end
