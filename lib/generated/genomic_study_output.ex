defmodule Fhir.GenomicStudyOutput do
  use TypedStruct

  typedstruct do
    field(:extension, [Fhir.Extension], default: [])
    field(:file, Fhir.Reference)
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
