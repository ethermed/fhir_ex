defmodule Fhir.Generated.EvidenceVariable do
  use TypedStruct

  typedstruct do
    field :_handling, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :handling, :string
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :valueCategory, [Fhir.Generated.CodeableConcept], default: []
        field :valueQuantity, [Fhir.Generated.Quantity], default: []
        field :valueRange, [Fhir.Generated.Range], default: []
        field :variableDefinition, Fhir.Generated.Reference
  end
end
