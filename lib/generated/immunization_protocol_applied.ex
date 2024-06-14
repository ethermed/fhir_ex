defmodule Fhir.ImmunizationProtocolApplied do
  use TypedStruct

  typedstruct do
    field(:_doseNumber, Fhir.Element)
    field(:_series, Fhir.Element)
    field(:_seriesDoses, Fhir.Element)
    field(:authority, Fhir.Reference)
    field(:doseNumber, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:series, :string)
    field(:seriesDoses, :string)
    field(:targetDisease, [Fhir.CodeableConcept], default: [])
  end
end
