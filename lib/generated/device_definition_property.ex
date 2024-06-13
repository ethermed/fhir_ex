defmodule Fhir.Generated.DeviceDefinitionProperty do
  use TypedStruct

  typedstruct do
    field :_valueBoolean, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :valueAttachment, Fhir.Generated.Attachment
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueInteger, :float
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueString, :string
  end
end
