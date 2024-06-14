defmodule Fhir.v6().ValueSetFilter do
  use TypedStruct

  typedstruct do
    field(:_op, Fhir.v6().Element)
    field(:_property, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:op, :string)
    field(:property, :string)
    field(:value, :string)
  end
end
