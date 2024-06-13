defmodule Fhir.Generated.CoveragePaymentBy do
  use TypedStruct

  typedstruct do
    field :_responsibility, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :party, Fhir.Generated.Reference
        field :responsibility, :string
  end
end
