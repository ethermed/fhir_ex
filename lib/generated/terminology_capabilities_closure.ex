defmodule Fhir.Generated.TerminologyCapabilitiesClosure do
  use TypedStruct

  typedstruct do
    field :_translation, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :translation, :boolean
  end
end
