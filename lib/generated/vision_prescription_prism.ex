defmodule Fhir.VisionPrescriptionPrism do
  use TypedStruct

  typedstruct do
    field(:_amount, Fhir.Element)
    field(:_base, Fhir.Element)
    field(:amount, :decimal)
    field(:base, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
