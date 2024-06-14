defmodule Fhir.v6().ValueSetDesignation do
  use TypedStruct

  typedstruct do
    field(:_language, Fhir.v6().Element)
    field(:_value, Fhir.v6().Element)
    field(:additionalUse, [Fhir.v6().Coding], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:language, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:use, Fhir.v6().Coding)
    field(:value, :string)
  end
end
