defmodule Fhir.DataRequirementDateFilter do
  use TypedStruct

  typedstruct do
    field(:_path, Fhir.Element)
    field(:_searchParam, Fhir.Element)
    field(:_valueDateTime, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:path, :string)
    field(:searchParam, :string)
    field(:valueDateTime, :string)
    field(:valueDuration, Fhir.Duration)
    field(:valuePeriod, Fhir.Period)
  end
end
