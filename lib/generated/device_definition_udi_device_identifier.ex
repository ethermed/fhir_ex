defmodule Fhir.DeviceDefinitionUdiDeviceIdentifier do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_deviceIdentifier, Fhir.Element)
    field(:_issuer, Fhir.Element)
    field(:_jurisdiction, Fhir.Element)
    field(:deviceIdentifier, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:issuer, :string)
    field(:jurisdiction, :string)
    field(:marketDistribution, [Fhir.DeviceDefinitionMarketDistribution], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
