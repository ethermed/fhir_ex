defmodule Fhir.v6().ObservationReferenceRange do
  use TypedStruct

  typedstruct do
    field(:_text, Fhir.v6().Element)
    field(:age, Fhir.v6().Range)
    field(:appliesTo, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:high, Fhir.v6().Quantity)
    field(:id, :string)
    field(:low, Fhir.v6().Quantity)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:normalValue, Fhir.v6().CodeableConcept)
    field(:text, :string)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
