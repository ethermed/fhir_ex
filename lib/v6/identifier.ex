defmodule Fhir.v6().Identifier do
  use TypedStruct

  typedstruct do
    field(:_system, Fhir.v6().Element)
    field(:_use, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:assigner, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:period, Fhir.v6().Period)
    field(:system, :string)
    field(:type, Fhir.v6().CodeableConcept)
    field(:use, any())
    field(:value, :string)
  end
end
