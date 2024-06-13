defmodule Fhir.Generated.SpecimenDefinitionAdditive do
  use TypedStruct

  typedstruct do
    field :additiveCodeableConcept, Fhir.Generated.CodeableConcept
        field :additiveReference, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
