defmodule Fhir.Generated.ImmunizationProgramEligibility do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :program, Fhir.Generated.CodeableConcept
        field :programStatus, Fhir.Generated.CodeableConcept
  end
end
