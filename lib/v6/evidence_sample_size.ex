defmodule Fhir.v6().EvidenceSampleSize do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_knownDataCount, Fhir.v6().Element)
    field(:_numberOfParticipants, Fhir.v6().Element)
    field(:_numberOfStudies, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:knownDataCount, :float)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:numberOfParticipants, :float)
    field(:numberOfStudies, :float)
  end
end
