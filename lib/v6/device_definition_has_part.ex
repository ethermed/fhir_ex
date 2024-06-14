defmodule Fhir.v6().DeviceDefinitionHasPart do
  use TypedStruct

  typedstruct do
    field(:_count, Fhir.v6().Element)
    field(:count, :float)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reference, Fhir.v6().Reference)
  end
end
