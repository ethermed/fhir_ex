defmodule Fhir.v6().DeviceDefinitionDeviceName do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:type, :string)
  end
end
