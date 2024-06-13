defmodule Fhir.Generated.SubstancePolymerMonomerSet do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :ratioType, Fhir.Generated.CodeableConcept
        field :startingMaterial, [Fhir.Generated.SubstancePolymerStartingMaterial], default: []
  end
end
