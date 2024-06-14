defmodule Fhir.DeviceDefinitionHasPart do
  use TypedStruct

  typedstruct do
    field(:_count, Fhir.Element)
    field(:count, :float)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:reference, Fhir.Reference)
  end
end
