defmodule Fhir.ObservationReferenceRange do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.Element)
    field(:age, Fhir.Range)
    field(:appliesTo, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:high, Fhir.Quantity)
    field(:id, :string)
    field(:low, Fhir.Quantity)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:normalValue, Fhir.CodeableConcept)
    field(:text, :string)
    field(:type, Fhir.CodeableConcept)
  end
end
