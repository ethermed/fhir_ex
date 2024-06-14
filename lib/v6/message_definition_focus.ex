defmodule Fhir.v6().MessageDefinitionFocus do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_max, Fhir.v6().Element)
    field(:_min, Fhir.v6().Element)
    field(:code, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:profile, :string)
  end
end
