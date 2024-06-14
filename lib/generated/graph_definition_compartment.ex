defmodule Fhir.GraphDefinitionCompartment do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_expression, Fhir.Element)
    field(:_rule, Fhir.Element)
    field(:_use, Fhir.Element)
    field(:code, :string)
    field(:description, :string)
    field(:expression, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:rule, :string)
    field(:use, :string)
  end
end
