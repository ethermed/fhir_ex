defmodule Fhir.v6().ContractSigner do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:party, Fhir.v6().Reference)
    field(:signature, [Fhir.v6().Signature], default: [])
    field(:type, Fhir.v6().Coding)
  end
end
