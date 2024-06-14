defmodule Fhir.v6().PatientContact do
  use TypedStruct

  typedstruct do
    field(:_gender, Fhir.v6().Element)
    field(:address, Fhir.v6().Address)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:gender, :string)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, Fhir.v6().HumanName)
    field(:organization, Fhir.v6().Reference)
    field(:period, Fhir.v6().Period)
    field(:relationship, [Fhir.v6().CodeableConcept], default: [])
    field(:telecom, [Fhir.v6().ContactPoint], default: [])
  end
end
