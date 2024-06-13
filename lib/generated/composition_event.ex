defmodule Fhir.Generated.CompositionEvent do
  use TypedStruct

  typedstruct do
    field :detail, [Fhir.Generated.CodeableReference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
  end
end
