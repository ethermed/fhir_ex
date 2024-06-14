defmodule Fhir.DeviceDefinitionRegulatoryIdentifier do
  use TypedStruct

  typedstruct do
    field(:_deviceIdentifier, Fhir.Element)
    field(:_issuer, Fhir.Element)
    field(:_jurisdiction, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:deviceIdentifier, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:issuer, :string)
    field(:jurisdiction, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, :string)
  end
end
