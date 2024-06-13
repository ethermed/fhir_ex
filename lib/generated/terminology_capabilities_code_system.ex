defmodule Fhir.Generated.TerminologyCapabilitiesCodeSystem do
  use TypedStruct

  typedstruct do
    field :_content, Fhir.Generated.Element
        field :_subsumption, Fhir.Generated.Element
        field :content, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :subsumption, :boolean
        field :uri, :string
        field :version, [Fhir.Generated.TerminologyCapabilitiesVersion], default: []
  end
end
