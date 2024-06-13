defmodule Fhir.Generated.DeviceDefinitionDistributor do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :organizationReference, [Fhir.Generated.Reference], default: []
  end
end
