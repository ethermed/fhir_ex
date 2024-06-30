defmodule Fhir.MedicationBatch do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_expirationDate, Fhir.Element)
    field(:_lotNumber, Fhir.Element)
    field(:expirationDate, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:lotNumber, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
