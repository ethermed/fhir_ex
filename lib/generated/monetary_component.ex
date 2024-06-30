defmodule Fhir.MonetaryComponent do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_factor, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:amount, Fhir.Money)
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:type, :string)
  end
end
