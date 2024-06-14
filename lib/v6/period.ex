defmodule Fhir.v6().Period do
  use TypedStruct

  typedstruct do
    field(:_end, Fhir.v6().Element)
    field(:_start, Fhir.v6().Element)
    field(:end, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:start, :datetime)
  end
end
