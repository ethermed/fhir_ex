defmodule Fhir.v6().ClaimResponseInsurance do
  use TypedStruct

  typedstruct do
    field(:_businessArrangement, Fhir.v6().Element)
    field(:_focal, Fhir.v6().Element)
    field(:_sequence, Fhir.v6().Element)
    field(:businessArrangement, :string)
    field(:claimResponse, Fhir.v6().Reference)
    field(:coverage, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focal, :boolean)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:sequence, :float)
  end
end
