defmodule Fhir.MedicationRequestInitialFill do
  use TypedStruct

  typedstruct do
    field(:duration, Fhir.Duration)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:quantity, Fhir.Quantity)
  end
end
