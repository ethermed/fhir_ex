defmodule Fhir.Meta do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_lastUpdated, Fhir.Element)
    field(:_source, Fhir.Element)
    field(:_versionId, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:lastUpdated, :timestamp)
    field(:profile, [:string], default: [])
    field(:security, [Fhir.Coding], default: [])
    field(:source, :string)
    field(:tag, [Fhir.Coding], default: [])
    field(:versionId, :string)
  end
end
