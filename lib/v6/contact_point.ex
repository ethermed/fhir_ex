defmodule Fhir.v6().ContactPoint do
  use TypedStruct

  typedstruct do
    field(:_rank, Fhir.v6().Element)
    field(:_system, Fhir.v6().Element)
    field(:_use, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:period, Fhir.v6().Period)
    field(:rank, :float)
    field(:system, any())
    field(:use, any())
    field(:value, :string)
  end
end
