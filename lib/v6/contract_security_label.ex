defmodule Fhir.v6().ContractSecurityLabel do
  use TypedStruct

  typedstruct do
    field(:_number, [Fhir.v6().Element], default: [])
    field(:category, [Fhir.v6().Coding], default: [])
    field(:classification, Fhir.v6().Coding)
    field(:control, [Fhir.v6().Coding], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:number, [:float], default: [])
  end
end
