defmodule Fhir.v6().NamingSystemUniqueId do
  use TypedStruct

  typedstruct do
    field(:_authoritative, Fhir.v6().Element)
    field(:_comment, Fhir.v6().Element)
    field(:_preferred, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:authoritative, :boolean)
    field(:comment, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:preferred, :boolean)
    field(:type, :string)
    field(:value, :string)
  end
end
