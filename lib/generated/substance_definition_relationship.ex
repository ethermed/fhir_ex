defmodule Fhir.Generated.SubstanceDefinitionRelationship do
  use TypedStruct

  typedstruct do
    field :_amountString, Fhir.Generated.Element
        field :_isDefining, Fhir.Generated.Element
        field :amountQuantity, Fhir.Generated.Quantity
        field :amountRatio, Fhir.Generated.Ratio
        field :amountString, :string
        field :comparator, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :isDefining, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :ratioHighLimitAmount, Fhir.Generated.Ratio
        field :source, [Fhir.Generated.Reference], default: []
        field :substanceDefinitionCodeableConcept, Fhir.Generated.CodeableConcept
        field :substanceDefinitionReference, Fhir.Generated.Reference
        field :type, Fhir.Generated.CodeableConcept
  end
end
