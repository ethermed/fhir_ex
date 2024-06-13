defmodule Fhir.Generated.TestPlanScript do
  use TypedStruct

  typedstruct do
    field :_sourceString, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :language, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :sourceReference, Fhir.Generated.Reference
        field :sourceString, :string
  end
end
