defmodule Fhir.SubstancePolymerMonomerSet do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :ratioType, Fhir.CodeableConcept
        field :startingMaterial, [Fhir.SubstancePolymerStartingMaterial], default: []
  end
end
