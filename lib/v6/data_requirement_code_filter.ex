defmodule Fhir.v6().DataRequirementCodeFilter do
  use TypedStruct

  typedstruct do
    field(:_path, Fhir.v6().Element)
    field(:_searchParam, Fhir.v6().Element)
    field(:code, [Fhir.v6().Coding], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:path, :string)
    field(:searchParam, :string)
    field(:valueSet, :string)
  end
end
