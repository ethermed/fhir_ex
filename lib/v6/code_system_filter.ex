defmodule Fhir.v6().CodeSystemFilter do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_operator, [Fhir.v6().Element], default: [])
    field(:_value, Fhir.v6().Element)
    field(:code, :string)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:operator, [:string], default: [])
    field(:value, :string)
  end
end
