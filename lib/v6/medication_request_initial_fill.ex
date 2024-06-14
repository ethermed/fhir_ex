defmodule Fhir.v6().MedicationRequestInitialFill do
  use TypedStruct

  typedstruct do
    field(:duration, Fhir.v6().Duration)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:quantity, Fhir.v6().Quantity)
  end
end
