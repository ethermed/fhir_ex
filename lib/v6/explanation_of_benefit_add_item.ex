defmodule Fhir.v6().ExplanationOfBenefitAddItem do
  use TypedStruct

  typedstruct do
    field(:_detailSequence, [Fhir.v6().Element], default: [])
    field(:_factor, Fhir.v6().Element)
    field(:_itemSequence, [Fhir.v6().Element], default: [])
    field(:_noteNumber, [Fhir.v6().Element], default: [])
    field(:_servicedDate, Fhir.v6().Element)
    field(:_subDetailSequence, [Fhir.v6().Element], default: [])
    field(:adjudication, [Fhir.v6().ExplanationOfBenefitAdjudication], default: [])
    field(:bodySite, [Fhir.v6().ExplanationOfBenefitBodySite1], default: [])
    field(:detail, [Fhir.v6().ExplanationOfBenefitDetail1], default: [])
    field(:detailSequence, [:float], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:itemSequence, [:float], default: [])
    field(:locationAddress, Fhir.v6().Address)
    field(:locationCodeableConcept, Fhir.v6().CodeableConcept)
    field(:locationReference, Fhir.v6().Reference)
    field(:modifier, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:net, Fhir.v6().Money)
    field(:noteNumber, [:float], default: [])
    field(:patientPaid, Fhir.v6().Money)
    field(:productOrService, Fhir.v6().CodeableConcept)
    field(:productOrServiceEnd, Fhir.v6().CodeableConcept)
    field(:programCode, [Fhir.v6().CodeableConcept], default: [])
    field(:provider, [Fhir.v6().Reference], default: [])
    field(:quantity, Fhir.v6().Quantity)
    field(:request, [Fhir.v6().Reference], default: [])
    field(:revenue, Fhir.v6().CodeableConcept)
    field(:reviewOutcome, Fhir.v6().ExplanationOfBenefitReviewOutcome)
    field(:servicedDate, :string)
    field(:servicedPeriod, Fhir.v6().Period)
    field(:subDetailSequence, [:float], default: [])
    field(:tax, Fhir.v6().Money)
    field(:traceNumber, [Fhir.v6().Identifier], default: [])
    field(:unitPrice, Fhir.v6().Money)
  end
end