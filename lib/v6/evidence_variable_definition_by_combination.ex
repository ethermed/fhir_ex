defmodule Fhir.v6().EvidenceVariableDefinitionByCombination do
  use TypedStruct

  typedstruct do
    field(:_code, Fhir.v6().Element)
    field(:_threshold, Fhir.v6().Element)
    field(:characteristic, [Fhir.v6().EvidenceVariableCharacteristic], default: [])
    field(:code, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:threshold, :float)
  end
end
