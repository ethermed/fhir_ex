defmodule Fhir.Generated.MedicinalProductDefinitionCrossReference do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :product, Fhir.Generated.CodeableReference
        field :type, Fhir.Generated.CodeableConcept
  end
end
