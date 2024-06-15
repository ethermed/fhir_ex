defmodule Fhir.SubstanceSourceMaterialOrganism do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_intraspecificDescription, Fhir.Element
        field :author, [Fhir.SubstanceSourceMaterialAuthor], default: []
        field :extension, [Fhir.Extension], default: []
        field :family, Fhir.CodeableConcept
        field :genus, Fhir.CodeableConcept
        field :hybrid, Fhir.SubstanceSourceMaterialHybrid
        field :id, :string
        field :intraspecificDescription, :string
        field :intraspecificType, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
        field :organismGeneral, Fhir.SubstanceSourceMaterialOrganismGeneral
        field :species, Fhir.CodeableConcept
  end
end
