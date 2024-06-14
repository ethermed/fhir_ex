defmodule Fhir.Period do
  use TypedStruct

  typedstruct do
    field(:_end, Fhir.Element)
    field(:_start, Fhir.Element)
    field(:end, :datetime)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:start, :datetime)
  end
end
