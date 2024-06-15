defmodule Fhir.SubstanceSourceMaterialHybrid do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_maternalOrganismId, Fhir.Element
        field :_maternalOrganismName, Fhir.Element
        field :_paternalOrganismId, Fhir.Element
        field :_paternalOrganismName, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :hybridType, Fhir.CodeableConcept
        field :id, :string
        field :maternalOrganismId, :string
        field :maternalOrganismName, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :paternalOrganismId, :string
        field :paternalOrganismName, :string
  end
end
