defmodule Fhir.Generated.AdverseEventCausality do
  use TypedStruct

  typedstruct do
    field :assessmentMethod, Fhir.Generated.CodeableConcept
        field :author, Fhir.Generated.Reference
        field :entityRelatedness, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
