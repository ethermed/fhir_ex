defmodule Fhir.EvidenceVariable do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_handling, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :handling, :string
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :valueCategory, [Fhir.CodeableConcept], default: []
        field :valueQuantity, [Fhir.Quantity], default: []
        field :valueRange, [Fhir.Range], default: []
        field :variableDefinition, Fhir.Reference
  end
end
