defmodule Fhir.Generated.CapabilityStatementSoftware do
  use TypedStruct

  typedstruct do
    field :_name, Fhir.Generated.Element
        field :_releaseDate, Fhir.Generated.Element
        field :_version, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :releaseDate, :datetime
        field :version, :string
  end
end
