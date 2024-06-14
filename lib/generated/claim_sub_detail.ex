defmodule Fhir.ClaimSubDetail do
  use TypedStruct

  typedstruct do
    field(:_factor, Fhir.Element)
    field(:_sequence, Fhir.Element)
    field(:category, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:modifier, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:net, Fhir.Money)
    field(:patientPaid, Fhir.Money)
    field(:productOrService, Fhir.CodeableConcept)
    field(:productOrServiceEnd, Fhir.CodeableConcept)
    field(:programCode, [Fhir.CodeableConcept], default: [])
    field(:quantity, Fhir.Quantity)
    field(:revenue, Fhir.CodeableConcept)
    field(:sequence, :float)
    field(:tax, Fhir.Money)
    field(:traceNumber, [Fhir.Identifier], default: [])
    field(:udi, [Fhir.Reference], default: [])
    field(:unitPrice, Fhir.Money)
  end
end
