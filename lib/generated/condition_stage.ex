defmodule Fhir.Generated.ConditionStage do
  use TypedStruct

  typedstruct do
    field :assessment, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :summary, Fhir.Generated.CodeableConcept
        field :type, Fhir.Generated.CodeableConcept
  end
end
