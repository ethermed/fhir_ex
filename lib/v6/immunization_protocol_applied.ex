defmodule Fhir.v6().ImmunizationProtocolApplied do
  use TypedStruct

  typedstruct do
    field(:_doseNumber, Fhir.v6().Element)
    field(:_series, Fhir.v6().Element)
    field(:_seriesDoses, Fhir.v6().Element)
    field(:authority, Fhir.v6().Reference)
    field(:doseNumber, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:series, :string)
    field(:seriesDoses, :string)
    field(:targetDisease, [Fhir.v6().CodeableConcept], default: [])
  end
end
