defmodule Fhir.SubstanceNucleicAcidSugar do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_name, Fhir.Element
        field :_residueSite, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, Fhir.Identifier
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :residueSite, :string
  end
end
