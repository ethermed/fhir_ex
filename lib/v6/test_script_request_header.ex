defmodule Fhir.v6().TestScriptRequestHeader do
  use TypedStruct

  typedstruct do
    field(:_field, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:field, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:value, :string)
  end
end
