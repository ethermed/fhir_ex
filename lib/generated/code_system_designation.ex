defmodule Fhir.CodeSystemDesignation do
  use TypedStruct

  typedstruct do
    field(:_language, Fhir.Element)
    field(:_value, Fhir.Element)
    field(:additionalUse, [Fhir.Coding], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:language, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:use, Fhir.Coding)
    field(:value, :string)
  end
end