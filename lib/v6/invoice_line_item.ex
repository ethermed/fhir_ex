defmodule Fhir.v6().InvoiceLineItem do
  use TypedStruct

  typedstruct do
    field(:_sequence, Fhir.v6().Element)
    field(:_servicedDate, Fhir.v6().Element)
    field(:chargeItemCodeableConcept, Fhir.v6().CodeableConcept)
    field(:chargeItemReference, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:priceComponent, [Fhir.v6().MonetaryComponent], default: [])
    field(:sequence, :float)
    field(:servicedDate, :string)
    field(:servicedPeriod, Fhir.v6().Period)
  end
end
