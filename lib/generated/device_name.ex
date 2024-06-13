defmodule Fhir.Generated.DeviceName do
  use TypedStruct

  typedstruct do
    field :_display, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :display, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, :string
        field :value, :string
  end
end
