defmodule Fhir.v6().Parameters do
  use TypedStruct

  typedstruct do
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:id, :string)
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:parameter, [Fhir.v6().ParametersParameter], default: [])
    field(:resourceType, :string, default: "Parameters")
  end
end
