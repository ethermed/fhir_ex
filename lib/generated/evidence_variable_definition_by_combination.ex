defmodule Fhir.EvidenceVariableDefinitionByCombination do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_code, Fhir.Element)
    field(:_threshold, Fhir.Element)
    field(:characteristic, [Fhir.EvidenceVariableCharacteristic], default: [])
    field(:code, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:threshold, :float)
  end
end
