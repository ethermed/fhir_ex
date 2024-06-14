defmodule Fhir.v6().DataRequirementDateFilter do
  use TypedStruct

  typedstruct do
    field(:_path, Fhir.v6().Element)
    field(:_searchParam, Fhir.v6().Element)
    field(:_valueDateTime, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:path, :string)
    field(:searchParam, :string)
    field(:valueDateTime, :string)
    field(:valueDuration, Fhir.v6().Duration)
    field(:valuePeriod, Fhir.v6().Period)
  end
end
