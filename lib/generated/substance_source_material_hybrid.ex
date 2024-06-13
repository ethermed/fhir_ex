defmodule Fhir.Generated.SubstanceSourceMaterialHybrid do
  use TypedStruct

  typedstruct do
    field :_maternalOrganismId, Fhir.Generated.Element
        field :_maternalOrganismName, Fhir.Generated.Element
        field :_paternalOrganismId, Fhir.Generated.Element
        field :_paternalOrganismName, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :hybridType, Fhir.Generated.CodeableConcept
        field :id, :string
        field :maternalOrganismId, :string
        field :maternalOrganismName, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :paternalOrganismId, :string
        field :paternalOrganismName, :string
  end
end
