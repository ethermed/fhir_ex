defmodule Fhir.DeviceDefinitionMarketDistribution do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_subJurisdiction, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:marketPeriod, Fhir.Period)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:subJurisdiction, :string)
  end
end
