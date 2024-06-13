defmodule Fhir.Generated.DeviceDefinitionRegulatoryIdentifier do
  use TypedStruct

  typedstruct do
    field :_deviceIdentifier, Fhir.Generated.Element
        field :_issuer, Fhir.Generated.Element
        field :_jurisdiction, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :deviceIdentifier, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :issuer, :string
        field :jurisdiction, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, :string
  end
end
