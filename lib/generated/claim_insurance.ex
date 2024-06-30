defmodule Fhir.ClaimInsurance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_businessArrangement, Fhir.Element)
    field(:_focal, Fhir.Element)
    field(:_preAuthRef, [Fhir.Element], default: [])
    field(:_sequence, Fhir.Element)
    field(:businessArrangement, :string)
    field(:claimResponse, Fhir.Reference)
    field(:coverage, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:focal, :boolean)
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:preAuthRef, [:string], default: [])
    field(:sequence, :float)
  end
end
