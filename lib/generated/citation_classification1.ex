defmodule Fhir.Generated.CitationClassification1 do
  use TypedStruct

  typedstruct do
    field :artifactAssessment, [Fhir.Generated.Reference], default: []
        field :classifier, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
