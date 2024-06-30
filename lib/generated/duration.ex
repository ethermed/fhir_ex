defmodule Fhir.Duration do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_code, Fhir.Element)
    field(:_comparator, Fhir.Element)
    field(:_system, Fhir.Element)
    field(:_unit, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:code, :string)
    field(:comparator, Ecto.Enum, values: [:<, :<=, :>=, :>, :ad])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:system, :string)
    field(:unit, :string)
    field(:value, :decimal)
  end
end
