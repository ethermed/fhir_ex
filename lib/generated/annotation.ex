defmodule Fhir.Annotation do
  use TypedStruct

  typedstruct do
    field(:_authorString, Fhir.Element)
    field(:_text, Fhir.Element)
    field(:_time, Fhir.Element)
    field(:authorReference, Fhir.Reference)
    field(:authorString, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:text, :string)
    field(:time, :datetime)
  end
end
