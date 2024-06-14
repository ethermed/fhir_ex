defmodule Fhir.v6().GraphDefinitionCompartment do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_expression, Fhir.v6().Element)
    field(:_rule, Fhir.v6().Element)
    field(:_use, Fhir.v6().Element)
    field(:code, :string)
    field(:description, :string)
    field(:expression, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:rule, :string)
    field(:use, :string)
  end
end
