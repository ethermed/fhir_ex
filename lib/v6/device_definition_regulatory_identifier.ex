defmodule Fhir.v6().DeviceDefinitionRegulatoryIdentifier do
  use TypedStruct

  typedstruct do
    field(:_deviceIdentifier, Fhir.v6().Element)
    field(:_issuer, Fhir.v6().Element)
    field(:_jurisdiction, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:deviceIdentifier, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:issuer, :string)
    field(:jurisdiction, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:type, :string)
  end
end
