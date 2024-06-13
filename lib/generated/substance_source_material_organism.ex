defmodule Fhir.Generated.SubstanceSourceMaterialOrganism do
  use TypedStruct

  typedstruct do
    field :_intraspecificDescription, Fhir.Generated.Element
        field :author, [Fhir.Generated.SubstanceSourceMaterialAuthor], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :family, Fhir.Generated.CodeableConcept
        field :genus, Fhir.Generated.CodeableConcept
        field :hybrid, Fhir.Generated.SubstanceSourceMaterialHybrid
        field :id, :string
        field :intraspecificDescription, :string
        field :intraspecificType, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :organismGeneral, Fhir.Generated.SubstanceSourceMaterialOrganismGeneral
        field :species, Fhir.Generated.CodeableConcept
  end
end
