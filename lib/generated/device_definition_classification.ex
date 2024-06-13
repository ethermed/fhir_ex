defmodule Fhir.Generated.DeviceDefinitionClassification do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :justification, [Fhir.Generated.RelatedArtifact], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
