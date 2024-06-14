defmodule Fhir.BundleSearch do
  use TypedStruct

  typedstruct do
    field(:_mode, Fhir.Element)
    field(:_score, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:score, :decimal)
  end
end
