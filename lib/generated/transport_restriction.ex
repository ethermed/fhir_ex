defmodule Fhir.Generated.TransportRestriction do
  use TypedStruct

  typedstruct do
    field :_repetitions, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :recipient, [Fhir.Generated.Reference], default: []
        field :repetitions, :float
  end
end
