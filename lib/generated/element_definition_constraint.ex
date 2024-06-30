defmodule Fhir.ElementDefinitionConstraint do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_expression, Fhir.Element)
    field(:_human, Fhir.Element)
    field(:_key, Fhir.Element)
    field(:_requirements, Fhir.Element)
    field(:_severity, Fhir.Element)
    field(:_suppress, Fhir.Element)
    field(:expression, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:human, :string)
    field(:id, :string)
    field(:key, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:requirements, :string)
    field(:severity, Ecto.Enum, values: [:error, :warning])
    field(:source, :string)
    field(:suppress, :boolean)
  end
end
