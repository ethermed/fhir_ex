defmodule Fhir.Generated.AccountGuarantor do
  use TypedStruct

  typedstruct do
    field :_onHold, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :onHold, :boolean
        field :party, Fhir.Generated.Reference
        field :period, Fhir.Generated.Period
  end
end
