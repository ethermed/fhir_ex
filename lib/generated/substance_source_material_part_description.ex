defmodule Fhir.Generated.SubstanceSourceMaterialPartDescription do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :part, Fhir.Generated.CodeableConcept
        field :partLocation, Fhir.Generated.CodeableConcept
  end
end
