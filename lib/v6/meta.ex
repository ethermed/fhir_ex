defmodule Fhir.v6().Meta do
  use TypedStruct

  typedstruct do
    field(:_lastUpdated, Fhir.v6().Element)
    field(:_source, Fhir.v6().Element)
    field(:_versionId, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:lastUpdated, :timestamp)
    field(:profile, [:string], default: [])
    field(:security, [Fhir.v6().Coding], default: [])
    field(:source, :string)
    field(:tag, [Fhir.v6().Coding], default: [])
    field(:versionId, :string)
  end
end
