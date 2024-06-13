defmodule Fhir.Generated.DeviceDefinitionUdiDeviceIdentifier do
  use TypedStruct

  typedstruct do
    field :_deviceIdentifier, Fhir.Generated.Element
        field :_issuer, Fhir.Generated.Element
        field :_jurisdiction, Fhir.Generated.Element
        field :deviceIdentifier, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :issuer, :string
        field :jurisdiction, :string
        field :marketDistribution, [Fhir.Generated.DeviceDefinitionMarketDistribution], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
