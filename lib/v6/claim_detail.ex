defmodule Fhir.v6().ClaimDetail do
  use TypedStruct

  typedstruct do
    field(:_factor, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:category, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:modifier, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:net, Fhir.v6().Money)
    field(:patientPaid, Fhir.v6().Money)
    field(:productOrService, Fhir.v6().CodeableConcept)
    field(:productOrServiceEnd, Fhir.v6().CodeableConcept)
    field(:programCode, [Fhir.v6().CodeableConcept], default: [])
    field(:quantity, Fhir.v6().Quantity)
    field(:revenue, Fhir.v6().CodeableConcept)
    field(:sequence, :float)
    field(:subDetail, [Fhir.v6().ClaimSubDetail], default: [])
    field(:tax, Fhir.v6().Money)
    field(:traceNumber, [Fhir.v6().Identifier], default: [])
    field(:udi, [Fhir.v6().Reference], default: [])
    field(:unitPrice, Fhir.v6().Money)
  end
end
