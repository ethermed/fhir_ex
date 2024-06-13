defmodule Fhir.Generated.ConditionDefinitionObservation do
  use TypedStruct

  typedstruct do
    field :category, Fhir.Generated.CodeableConcept
        field :code, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
