defmodule Fhir.ExplanationOfBenefitDetail1 do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_factor, Fhir.Element)
    field(:_noteNumber, [Fhir.Element], default: [])
    field(:adjudication, [Fhir.ExplanationOfBenefitAdjudication], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:modifier, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:net, Fhir.Money)
    field(:noteNumber, [:float], default: [])
    field(:patientPaid, Fhir.Money)
    field(:productOrService, Fhir.CodeableConcept)
    field(:productOrServiceEnd, Fhir.CodeableConcept)
    field(:quantity, Fhir.Quantity)
    field(:revenue, Fhir.CodeableConcept)
    field(:reviewOutcome, Fhir.ExplanationOfBenefitReviewOutcome)
    field(:subDetail, [Fhir.ExplanationOfBenefitSubDetail1], default: [])
    field(:tax, Fhir.Money)
    field(:traceNumber, [Fhir.Identifier], default: [])
    field(:unitPrice, Fhir.Money)
  end
end
