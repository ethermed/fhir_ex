defmodule Fhir.v6().DeviceUdiCarrier do
  use TypedStruct

  typedstruct do
    field(:_carrierAIDC, Fhir.v6().Element)
    field(:_carrierHRF, Fhir.v6().Element)
    field(:_deviceIdentifier, Fhir.v6().Element)
    field(:_entryType, Fhir.v6().Element)
    field(:_issuer, Fhir.v6().Element)
    field(:_jurisdiction, Fhir.v6().Element)
    field(:carrierAIDC, :string)
    field(:carrierHRF, :string)
    field(:deviceIdentifier, :string)
    field(:entryType, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:issuer, :string)
    field(:jurisdiction, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
