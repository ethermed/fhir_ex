defmodule Fhir.Identifier do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_system, Fhir.Element)
    field(:_use, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:assigner, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:period, Fhir.Period)
    field(:system, :string)
    field(:type, Fhir.CodeableConcept)
    field(:use, Ecto.Enum, values: [:usual, :official, :temp, :secondary, :old])
    field(:value, :string)
  end
end
