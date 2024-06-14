defmodule Fhir.v6().CompartmentDefinitionResource do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_documentation, Fhir.v6().Element)
    field(:_endParam, Fhir.v6().Element)
    field(:_param, [Fhir.v6().Element], default: [])
    field(:_startParam, Fhir.v6().Element)
    field(:code, :string)
    field(:documentation, :string)
    field(:endParam, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:param, [:string], default: [])
    field(:startParam, :string)
  end
end
