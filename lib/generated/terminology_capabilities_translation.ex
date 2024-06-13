defmodule Fhir.Generated.TerminologyCapabilitiesTranslation do
  use TypedStruct

  typedstruct do
    field :_needsMap, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :needsMap, :boolean
  end
end
