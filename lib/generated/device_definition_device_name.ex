defmodule Fhir.Generated.DeviceDefinitionDeviceName do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :type, :string
  end
end
