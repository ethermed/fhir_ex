defmodule Fhir.DeviceDefinitionConformsTo do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_version, [Fhir.Element], default: [])
    field(:category, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:source, [Fhir.RelatedArtifact], default: [])
    field(:specification, Fhir.CodeableConcept)
    field(:version, [:string], default: [])
  end
end
