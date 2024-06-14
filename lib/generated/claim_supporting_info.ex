defmodule Fhir.ClaimSupportingInfo do
  use TypedStruct

  typedstruct do
    field(:_sequence, Fhir.Element)
    field(:_timingDate, Fhir.Element)
    field(:_valueBoolean, Fhir.Element)
    field(:_valueString, Fhir.Element)
    field(:category, Fhir.CodeableConcept)
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:reason, Fhir.CodeableConcept)
    field(:sequence, :float)
    field(:timingDate, :string)
    field(:timingPeriod, Fhir.Period)
    field(:valueAttachment, Fhir.Attachment)
    field(:valueBoolean, :boolean)
    field(:valueIdentifier, Fhir.Identifier)
    field(:valueQuantity, Fhir.Quantity)
    field(:valueReference, Fhir.Reference)
    field(:valueString, :string)
  end
end
