defmodule Fhir.Generated.DetectedIssueEvidence do
  use TypedStruct

  typedstruct do
    field :code, [Fhir.Generated.CodeableConcept], default: []
        field :detail, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
