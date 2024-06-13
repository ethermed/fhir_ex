defmodule Fhir.Generated.DeviceVersion do
  use TypedStruct

  typedstruct do
    field :_installDate, Fhir.Generated.Element
        field :_value, Fhir.Generated.Element
        field :component, Fhir.Generated.Identifier
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :installDate, :datetime
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :value, :string
  end
end
