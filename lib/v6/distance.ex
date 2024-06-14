defmodule Fhir.v6().Distance do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_comparator, Fhir.v6().Element)
    field(:_system, Fhir.v6().Element)
    field(:_unit, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:code, :string)
    field(:comparator, any())
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:system, :string)
    field(:unit, :string)
    field(:value, :decimal)
  end
end
