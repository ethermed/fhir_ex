defmodule Fhir.GenomicStudyInput do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:file, Fhir.Reference)
    field(:generatedByIdentifier, Fhir.Identifier)
    field(:generatedByReference, Fhir.Reference)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
