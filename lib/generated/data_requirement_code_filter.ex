defmodule Fhir.DataRequirementCodeFilter do
  use TypedStruct

  typedstruct do
    field(:_path, Fhir.Element)
    field(:_searchParam, Fhir.Element)
    field(:code, [Fhir.Coding], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:path, :string)
    field(:searchParam, :string)
    field(:valueSet, :string)
  end
end
