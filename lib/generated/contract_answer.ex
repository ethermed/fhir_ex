defmodule Fhir.Generated.ContractAnswer do
  use TypedStruct

  typedstruct do
    field :_valueBoolean, Fhir.Generated.Element
        field :_valueDate, Fhir.Generated.Element
        field :_valueDateTime, Fhir.Generated.Element
        field :_valueDecimal, Fhir.Generated.Element
        field :_valueInteger, Fhir.Generated.Element
        field :_valueString, Fhir.Generated.Element
        field :_valueTime, Fhir.Generated.Element
        field :_valueUri, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :valueAttachment, Fhir.Generated.Attachment
        field :valueBoolean, :boolean
        field :valueCoding, Fhir.Generated.Coding
        field :valueDate, :string
        field :valueDateTime, :string
        field :valueDecimal, :float
        field :valueInteger, :float
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueReference, Fhir.Generated.Reference
        field :valueString, :string
        field :valueTime, :string
        field :valueUri, :string
  end
end
