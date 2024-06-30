defmodule Fhir.ImplementationGuidePage1 do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_anchor, [Fhir.Element], default: [])
    field(:_name, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:anchor, [:string], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:title, :string)
  end
end
