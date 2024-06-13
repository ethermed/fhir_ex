defmodule Fhir.Generated.EvidenceVariableDefinitionByCombination do
  use TypedStruct

  typedstruct do
    field :_code, Fhir.Generated.Element
        field :_threshold, Fhir.Generated.Element
        field :characteristic, [Fhir.Generated.EvidenceVariableCharacteristic], default: []
        field :code, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :threshold, :float
  end
end
