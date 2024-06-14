defmodule Fhir.EpisodeOfCareStatusHistory do
  use TypedStruct

  typedstruct do
    field(:_status, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
    field(:status, :string)
  end
end
