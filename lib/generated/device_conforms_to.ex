defmodule Fhir.Generated.DeviceConformsTo do
  use TypedStruct

  typedstruct do
    field :_version, Fhir.Generated.Element
        field :category, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :specification, Fhir.Generated.CodeableConcept
        field :version, :string
  end
end
