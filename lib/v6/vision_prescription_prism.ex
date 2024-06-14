defmodule Fhir.v6().VisionPrescriptionPrism do
  use TypedStruct

  typedstruct do
    field(:_amount, Fhir.v6().Element)
    field(:_base, Fhir.v6().Element)
    field(:amount, :decimal)
    field(:base, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
