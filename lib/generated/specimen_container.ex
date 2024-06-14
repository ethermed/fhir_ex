defmodule Fhir.SpecimenContainer do
  use TypedStruct

  typedstruct do
    field(:device, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:location, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:specimenQuantity, Fhir.Quantity)
  end
end
