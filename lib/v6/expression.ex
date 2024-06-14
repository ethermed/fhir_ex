defmodule Fhir.v6().Expression do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_expression, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_reference, Fhir.v6().Element)
    field(:description, :string)
    field(:expression, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:language, :string)
    field(:name, :string)
    field(:reference, :string)
  end
end
