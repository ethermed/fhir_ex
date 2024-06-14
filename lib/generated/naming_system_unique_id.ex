defmodule Fhir.NamingSystemUniqueId do
  use TypedStruct

  typedstruct do
    field(:_authoritative, Fhir.Element)
    field(:_comment, Fhir.Element)
    field(:_preferred, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:authoritative, :boolean)
    field(:comment, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:preferred, :boolean)
    field(:type, :string)
    field(:value, :string)
  end
end
