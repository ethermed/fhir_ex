defmodule Fhir.ImplementationGuideTemplate do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_code, Fhir.Element)
    field(:_scope, Fhir.Element)
    field(:_source, Fhir.Element)
    field(:code, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:scope, :string)
    field(:source, :string)
  end
end
