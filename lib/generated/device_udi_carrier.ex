defmodule Fhir.Generated.DeviceUdiCarrier do
  use TypedStruct

  typedstruct do
    field :_carrierAIDC, Fhir.Generated.Element
        field :_carrierHRF, Fhir.Generated.Element
        field :_deviceIdentifier, Fhir.Generated.Element
        field :_entryType, Fhir.Generated.Element
        field :_issuer, Fhir.Generated.Element
        field :_jurisdiction, Fhir.Generated.Element
        field :carrierAIDC, :string
        field :carrierHRF, :string
        field :deviceIdentifier, :string
        field :entryType, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :issuer, :string
        field :jurisdiction, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
