defmodule Fhir.Generated.ContractSecurityLabel do
  use TypedStruct

  typedstruct do
    field :_number, [Fhir.Generated.Element], default: []
        field :category, [Fhir.Generated.Coding], default: []
        field :classification, Fhir.Generated.Coding
        field :control, [Fhir.Generated.Coding], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :number, [:float], default: []
  end
end
