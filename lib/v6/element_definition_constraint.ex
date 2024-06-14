defmodule Fhir.v6().ElementDefinitionConstraint do
  use TypedStruct

  typedstruct do
    field(:_expression, Fhir.v6().Element)
    field(:_human, Fhir.v6().Element)
    field(:_key, Fhir.v6().Element)
    field(:_requirements, Fhir.v6().Element)
    field(:_severity, Fhir.v6().Element)
    field(:_suppress, Fhir.v6().Element)
    field(:expression, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:human, :string)
    field(:id, :string)
    field(:key, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:requirements, :string)
    field(:severity, any())
    field(:source, :string)
    field(:suppress, :boolean)
  end
end
