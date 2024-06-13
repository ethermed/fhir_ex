defmodule Fhir.Generated.EvidenceVariableDefinitionByTypeAndValue do
  use TypedStruct

  typedstruct do
    field :_valueBoolean, Fhir.Generated.Element
        field :_valueId, Fhir.Generated.Element
        field :device, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :method, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :offset, Fhir.Generated.CodeableConcept
        field :type, Fhir.Generated.CodeableConcept
        field :valueBoolean, :boolean
        field :valueCodeableConcept, Fhir.Generated.CodeableConcept
        field :valueId, :string
        field :valueQuantity, Fhir.Generated.Quantity
        field :valueRange, Fhir.Generated.Range
        field :valueReference, Fhir.Generated.Reference
  end
end
