defmodule Fhir.Generated.EpisodeOfCareStatusHistory do
  use TypedStruct

  typedstruct do
    field :_status, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :status, :string
  end
end
