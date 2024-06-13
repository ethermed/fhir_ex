defmodule Fhir.Generated.AdministrableProductDefinitionProperty do
  use TypedStruct

  typedstruct do
    field :_valueBoolean, Fhir.Generated.Element
        field :_valueDate, Fhir.Generated.Element
        field :_valueMarkdown, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :status, Fhir.Generated.CodeableConcept
        field :type, Fhir.Generated.CodeableConcept
        field :valueAttachment, Fhir.Generated.Attachment
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueDate, :string
        field :valueMarkdown, :string
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueReference, Fhir.Generated.Reference
  end
end
