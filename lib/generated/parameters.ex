defmodule Fhir.Parameters do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:parameter, [Fhir.ParametersParameter], default: [])
    field(:resourceType, :string, default: "Parameters")
  end
end
