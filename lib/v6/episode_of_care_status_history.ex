defmodule Fhir.v6().EpisodeOfCareStatusHistory do
  use TypedStruct

  typedstruct do
    field(:_status, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
    field(:status, :string)
  end
end
