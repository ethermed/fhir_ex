defmodule Fhir.DeviceDefinitionPackaging do
  use TypedStruct

  typedstruct do
    field(:_count, Fhir.Element)
    field(:count, :float)
    field(:distributor, [Fhir.DeviceDefinitionDistributor], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.Identifier)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:packaging, [Fhir.DeviceDefinitionPackaging], default: [])
    field(:type, Fhir.CodeableConcept)
    field(:udiDeviceIdentifier, [Fhir.DeviceDefinitionUdiDeviceIdentifier], default: [])
  end
end
