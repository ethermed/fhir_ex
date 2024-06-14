defmodule Fhir.v6().ClaimResponseDetail1 do
  use TypedStruct

  typedstruct do
    field(:_factor, Fhir.v6().Element)
    field(:_noteNumber, [Fhir.v6().Element], default: [])
    field(:adjudication, [Fhir.v6().ClaimResponseAdjudication], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:modifier, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:net, Fhir.v6().Money)
    field(:noteNumber, [:float], default: [])
    field(:productOrService, Fhir.v6().CodeableConcept)
    field(:productOrServiceEnd, Fhir.v6().CodeableConcept)
    field(:quantity, Fhir.v6().Quantity)
    field(:revenue, Fhir.v6().CodeableConcept)
    field(:reviewOutcome, Fhir.v6().ClaimResponseReviewOutcome)
    field(:subDetail, [Fhir.v6().ClaimResponseSubDetail1], default: [])
    field(:tax, Fhir.v6().Money)
    field(:traceNumber, [Fhir.v6().Identifier], default: [])
    field(:unitPrice, Fhir.v6().Money)
  end
end