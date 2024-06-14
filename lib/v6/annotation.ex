defmodule Fhir.v6().Annotation do
  use TypedStruct

  typedstruct do
    field(:_authorString, Fhir.v6().Element)
    field(:_text, Fhir.v6().Element)
    field(:_time, Fhir.v6().Element)
    field(:authorReference, Fhir.v6().Reference)
    field(:authorString, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:text, :string)
    field(:time, :datetime)
  end
end
