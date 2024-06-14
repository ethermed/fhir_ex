defmodule Fhir.v6().DeviceDefinitionMarketDistribution do
  use TypedStruct

  typedstruct do
    field(:_subJurisdiction, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:marketPeriod, Fhir.v6().Period)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:subJurisdiction, :string)
  end
end
