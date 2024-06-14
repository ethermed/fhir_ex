defmodule Fhir.v6().DeviceName do
  use TypedStruct

  typedstruct do
    field(:_display, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:display, :boolean)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, :string)
    field(:value, :string)
  end
end
