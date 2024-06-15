defmodule Fhir.SubstanceNucleicAcidLinkage do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_connectivity, Fhir.Element
        field :_name, Fhir.Element
        field :_residueSite, Fhir.Element
        field :connectivity, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Identifier
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :residueSite, :string
  end
end
