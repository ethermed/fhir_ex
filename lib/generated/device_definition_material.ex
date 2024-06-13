defmodule Fhir.Generated.DeviceDefinitionMaterial do
  use TypedStruct

  typedstruct do
    field :_allergenicIndicator, Fhir.Generated.Element
        field :_alternate, Fhir.Generated.Element
        field :allergenicIndicator, :boolean
        field :alternate, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :substance, Fhir.Generated.CodeableConcept
  end
end
