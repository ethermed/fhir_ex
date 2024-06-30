defmodule Fhir.DataRequirementSort do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_direction, Fhir.Element)
    field(:_path, Fhir.Element)
    field(:direction, Ecto.Enum, values: [:ascending, :descending])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:path, :string)
  end
end
