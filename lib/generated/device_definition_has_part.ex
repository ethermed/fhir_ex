defmodule Fhir.Generated.DeviceDefinitionHasPart do
  use TypedStruct

  typedstruct do
    field :_count, Fhir.Generated.Element
        field :count, :float
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reference, Fhir.Generated.Reference
  end
end
