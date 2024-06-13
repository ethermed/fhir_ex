defmodule Fhir.Generated.SubstanceReferenceInformationTarget do
  use TypedStruct

  typedstruct do
    field :_amountString, Fhir.Generated.Element
        field :amountQuantity, Fhir.Generated.Quantity
        field :amountRange, Fhir.Generated.Range
        field :amountString, :string
        field :amountType, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :interaction, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :organism, Fhir.Generated.CodeableConcept
        field :organismType, Fhir.Generated.CodeableConcept
        field :source, [Fhir.Generated.Reference], default: []
        field :target, Fhir.Generated.Identifier
        field :type, Fhir.Generated.CodeableConcept
  end
end
