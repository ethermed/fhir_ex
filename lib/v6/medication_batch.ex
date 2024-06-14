defmodule Fhir.v6().MedicationBatch do
  use TypedStruct

  typedstruct do
    field(:_expirationDate, Fhir.v6().Element)
    field(:_lotNumber, Fhir.v6().Element)
    field(:expirationDate, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:lotNumber, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
