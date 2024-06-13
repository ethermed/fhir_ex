defmodule Fhir.Generated.SubstanceNucleicAcidLinkage do
  use TypedStruct

  typedstruct do
    field :_connectivity, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :_residueSite, Fhir.Generated.Element
        field :connectivity, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Generated.Identifier
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :residueSite, :string
  end
end
