defmodule Fhir.Generated.SubstanceDefinitionProperty do
  use TypedStruct

  typedstruct do
    field :_valueBoolean, Fhir.Generated.Element
        field :_valueDate, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :valueAttachment, Fhir.Generated.Attachment
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueDate, :string
        field :valueQuantity, Fhir.Generated.Quantity
  end
end