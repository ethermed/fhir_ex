defmodule Fhir.CoverageEligibilityRequestInsurance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_businessArrangement, Fhir.Element)
    field(:_focal, Fhir.Element)
    field(:businessArrangement, :string)
    field(:coverage, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:focal, :boolean)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
