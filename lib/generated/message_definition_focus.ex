defmodule Fhir.MessageDefinitionFocus do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_code, Fhir.Element)
    field(:_max, Fhir.Element)
    field(:_min, Fhir.Element)
    field(:code, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:max, :string)
    field(:min, :float)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:profile, :string)
  end
end
