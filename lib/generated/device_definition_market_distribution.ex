defmodule Fhir.Generated.DeviceDefinitionMarketDistribution do
  use TypedStruct

  typedstruct do
    field :_subJurisdiction, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :marketPeriod, Fhir.Generated.Period
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :subJurisdiction, :string
  end
end
