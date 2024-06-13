defmodule Fhir.Generated.EvidenceVariableDefinition do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :description, :string
        field :directnessMatch, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :intended, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :observed, Fhir.Generated.Reference
        field :variableRole, Fhir.Generated.CodeableConcept
  end
end
