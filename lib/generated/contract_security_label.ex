defmodule Fhir.ContractSecurityLabel do
  use TypedStruct

  typedstruct do
    field(:_number, [Fhir.Element], default: [])
    field(:category, [Fhir.Coding], default: [])
    field(:classification, Fhir.Coding)
    field(:control, [Fhir.Coding], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:number, [:float], default: [])
  end
end
