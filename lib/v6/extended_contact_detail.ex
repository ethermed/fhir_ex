defmodule Fhir.v6().ExtendedContactDetail do
  use TypedStruct

  typedstruct do
    field(:address, Fhir.v6().Address)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:name, [Fhir.v6().HumanName], default: [])
    field(:organization, Fhir.v6().Reference)
    field(:period, Fhir.v6().Period)
    field(:purpose, Fhir.v6().CodeableConcept)
    field(:telecom, [Fhir.v6().ContactPoint], default: [])
  end
end
