defmodule Fhir.Generated.TerminologyCapabilitiesValidateCode do
  use TypedStruct

  typedstruct do
    field :_translations, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :translations, :boolean
  end
end
