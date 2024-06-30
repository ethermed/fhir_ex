defmodule Fhir.ContractSigner do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:party, Fhir.Reference)
    field(:signature, [Fhir.Signature], default: [])
    field(:type, Fhir.Coding)
  end
end
