defmodule Fhir.v6().DeviceDefinitionPackaging do
  use TypedStruct

  typedstruct do
    field(:_count, Fhir.v6().Element)
    field(:count, :float)
    field(:distributor, [Fhir.v6().DeviceDefinitionDistributor], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, Fhir.v6().Identifier)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:packaging, [Fhir.v6().DeviceDefinitionPackaging], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:udiDeviceIdentifier, [Fhir.v6().DeviceDefinitionUdiDeviceIdentifier], default: [])
  end
end
