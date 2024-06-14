defmodule Fhir.CapabilityStatementSoftware do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.Element)
    field(:_releaseDate, Fhir.Element)
    field(:_version, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:releaseDate, :datetime)
    field(:version, :string)
  end
end
