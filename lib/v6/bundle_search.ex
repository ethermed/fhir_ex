defmodule Fhir.v6().BundleSearch do
  use TypedStruct

  typedstruct do
    field(:_mode, Fhir.v6().Element)
    field(:_score, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:mode, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:score, :decimal)
  end
end
