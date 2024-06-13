defmodule Fhir.Generated.DeviceDefinitionConformsTo do
  use TypedStruct

  typedstruct do
    field :_version, [Fhir.Generated.Element], default: []
        field :category, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :source, [Fhir.Generated.RelatedArtifact], default: []
        field :specification, Fhir.Generated.CodeableConcept
        field :version, [:string], default: []
  end
end
