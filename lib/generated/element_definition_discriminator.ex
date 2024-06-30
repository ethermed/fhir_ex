defmodule Fhir.ElementDefinitionDiscriminator do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_path, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:path, :string)
    field(:type, Ecto.Enum, values: [:value, :exists, :pattern, :type, :profile, :position])
  end
end
