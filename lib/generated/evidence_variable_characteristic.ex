defmodule Fhir.Generated.EvidenceVariableCharacteristic do
  use TypedStruct

  typedstruct do
    field :_definitionId, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_exclude, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :definitionByCombination, Fhir.Generated.EvidenceVariableDefinitionByCombination
        field :definitionByTypeAndValue, Fhir.Generated.EvidenceVariableDefinitionByTypeAndValue
        field :definitionCanonical, :string
        field :definitionCodeableConcept, Fhir.Generated.CodeableConcept
        field :definitionExpression, Fhir.Generated.Expression
        field :definitionId, :string
        field :definitionReference, Fhir.Generated.Reference
        field :description, :string
        field :durationQuantity, Fhir.Generated.Quantity
        field :durationRange, Fhir.Generated.Range
        field :exclude, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :instancesQuantity, Fhir.Generated.Quantity
        field :instancesRange, Fhir.Generated.Range
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :timeFromEvent, [Fhir.Generated.EvidenceVariableTimeFromEvent], default: []
  end
end
