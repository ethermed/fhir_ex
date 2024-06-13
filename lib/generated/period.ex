defmodule Fhir.Generated.Period do
  use TypedStruct

  typedstruct do
    field :_end, Fhir.Generated.Element
        field :_start, Fhir.Generated.Element
        field :end, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :start, :datetime
  end
end
