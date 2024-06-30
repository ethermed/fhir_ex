defmodule Fhir.ContactPoint do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_rank, Fhir.Element)
    field(:_system, Fhir.Element)
    field(:_use, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:period, Fhir.Period)
    field(:rank, :float)
    field(:system, Ecto.Enum, values: [:phone, :fax, :email, :pager, :url, :sms, :other])
    field(:use, Ecto.Enum, values: [:home, :work, :temp, :old, :mobile])
    field(:value, :string)
  end
end
