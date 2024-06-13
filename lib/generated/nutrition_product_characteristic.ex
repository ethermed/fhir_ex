defmodule Fhir.Generated.NutritionProductCharacteristic do
  use TypedStruct

  typedstruct do
    field :_valueBase64Binary, Fhir.Generated.Element
        field :_valueBoolean, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :valueAttachment, Fhir.Generated.Attachment
        field :valueBase64Binary, :string
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueString, :string
  end
end
