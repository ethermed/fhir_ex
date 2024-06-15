defmodule Fhir.AdverseEventCausality do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :assessmentMethod, Fhir.CodeableConcept
        field :author, Fhir.Reference
        field :entityRelatedness, Fhir.CodeableConcept
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
  end
end
