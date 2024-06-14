defmodule Fhir.ValueSetFilter do
  use TypedStruct

  typedstruct do
    field(:_op, Fhir.Element)
    field(:_property, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:op, :string)
    field(:property, :string)
    field(:value, :string)
  end
end
