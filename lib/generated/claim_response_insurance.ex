defmodule Fhir.ClaimResponseInsurance do
  use TypedStruct

  typedstruct do
    field(:_businessArrangement, Fhir.Element)
    field(:_focal, Fhir.Element)
    field(:_sequence, Fhir.Element)
    field(:businessArrangement, :string)
    field(:claimResponse, Fhir.Reference)
    field(:coverage, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:focal, :boolean)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:sequence, :float)
  end
end
