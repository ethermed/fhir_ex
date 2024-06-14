defmodule Fhir.v6().ClaimInsurance do
  use TypedStruct

  typedstruct do
    field(:_businessArrangement, Fhir.v6().Element)
    field(:_focal, Fhir.v6().Element)
    field(:_preAuthRef, [Fhir.v6().Element], default: [])
    field(:_sequence, Fhir.v6().Element)
    field(:businessArrangement, :string)
    field(:claimResponse, Fhir.v6().Reference)
    field(:coverage, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focal, :boolean)
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:preAuthRef, [:string], default: [])
    field(:sequence, :float)
  end
end
