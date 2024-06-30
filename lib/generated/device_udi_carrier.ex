defmodule Fhir.DeviceUdiCarrier do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_carrierAIDC, Fhir.Element)
    field(:_carrierHRF, Fhir.Element)
    field(:_deviceIdentifier, Fhir.Element)
    field(:_entryType, Fhir.Element)
    field(:_issuer, Fhir.Element)
    field(:_jurisdiction, Fhir.Element)
    field(:carrierAIDC, :string)
    field(:carrierHRF, :string)
    field(:deviceIdentifier, :string)
    field(:entryType, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:issuer, :string)
    field(:jurisdiction, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
