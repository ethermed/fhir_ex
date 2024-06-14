defmodule Fhir.v6().SpecimenContainer do
  use TypedStruct

  typedstruct do
    field(:device, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:location, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:specimenQuantity, Fhir.v6().Quantity)
  end
end
