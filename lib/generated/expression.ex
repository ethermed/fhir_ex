defmodule Fhir.Expression do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_expression, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_reference, Fhir.Element)
    field(:description, :string)
    field(:expression, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:language, :string)
    field(:name, :string)
    field(:reference, :string)
  end
end
