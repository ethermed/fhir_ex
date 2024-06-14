defmodule Fhir.v6().ImplementationGuidePage1 do
  use TypedStruct

  typedstruct do
    field(:_anchor, [Fhir.v6().Element], default: [])
    field(:_name, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:anchor, [:string], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:title, :string)
  end
end
