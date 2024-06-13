defmodule Fhir.Generated.SubstanceSourceMaterialOrganismGeneral do
  use TypedStruct

  typedstruct do
    field :class, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :kingdom, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :order, Fhir.Generated.CodeableConcept
        field :phylum, Fhir.Generated.CodeableConcept
  end
end
