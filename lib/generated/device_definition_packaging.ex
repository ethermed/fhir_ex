defmodule Fhir.Generated.DeviceDefinitionPackaging do
  use TypedStruct

  typedstruct do
    field :_count, Fhir.Generated.Element
        field :count, :float
        field :distributor, [Fhir.Generated.DeviceDefinitionDistributor], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :packaging, [Fhir.Generated.DeviceDefinitionPackaging], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :udiDeviceIdentifier, [Fhir.Generated.DeviceDefinitionUdiDeviceIdentifier], default: []
  end
end
