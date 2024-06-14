defmodule Fhir.v6().CoverageEligibilityRequestInsurance do
  use TypedStruct

  typedstruct do
    field(:_businessArrangement, Fhir.v6().Element)
    field(:_focal, Fhir.v6().Element)
    field(:businessArrangement, :string)
    field(:coverage, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:focal, :boolean)
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
