defmodule Fhir.Generated.AccountCoverage do
  use TypedStruct

  typedstruct do
    field :_priority, Fhir.Generated.Element
        field :coverage, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :priority, :float
  end
end
