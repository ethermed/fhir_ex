defmodule Fhir.Generated.DeviceDefinitionLink do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :relatedDevice, Fhir.Generated.CodeableReference
        field :relation, Fhir.Generated.Coding
  end
end
