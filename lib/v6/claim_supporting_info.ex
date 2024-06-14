defmodule Fhir.v6().ClaimSupportingInfo do
  use TypedStruct

  typedstruct do
    field(:_sequence, Fhir.v6().Element)
    field(:_timingDate, Fhir.v6().Element)
    field(:_valueBoolean, Fhir.v6().Element)
    field(:_valueString, Fhir.v6().Element)
    field(:category, Fhir.v6().CodeableConcept)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reason, Fhir.v6().CodeableConcept)
    field(:sequence, :float)
    field(:timingDate, :string)
    field(:timingPeriod, Fhir.v6().Period)
    field(:valueAttachment, Fhir.v6().Attachment)
    field(:valueBoolean, :boolean)
    field(:valueIdentifier, Fhir.v6().Identifier)
    field(:valueQuantity, Fhir.v6().Quantity)
    field(:valueReference, Fhir.v6().Reference)
    field(:valueString, :string)
  end
end
