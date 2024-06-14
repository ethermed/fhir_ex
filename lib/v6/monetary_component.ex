defmodule Fhir.v6().MonetaryComponent do
  use TypedStruct

  typedstruct do
    field(:_factor, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:amount, Fhir.v6().Money)
    field(:code, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:factor, :decimal)
    field(:id, :string)
    field(:type, :string)
  end
end
