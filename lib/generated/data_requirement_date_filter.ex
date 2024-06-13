defmodule Fhir.Generated.DataRequirementDateFilter do
  use TypedStruct

  typedstruct do
    field :_path, Fhir.Generated.Element
        field :_searchParam, Fhir.Generated.Element
        field :_valueDateTime, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :path, :string
        field :searchParam, :string
        field :valueDateTime, :string
        field :valueDuration, Fhir.Generated.Duration
        field :valuePeriod, Fhir.Generated.Period
  end
end
