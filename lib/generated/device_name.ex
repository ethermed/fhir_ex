defmodule Fhir.DeviceName do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_display, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:display, :boolean)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, :string)
    field(:value, :string)
  end
end
