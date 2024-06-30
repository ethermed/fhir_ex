defmodule Fhir.ConceptMapProperty do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_code, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:_uri, Fhir.Element)
    field(:code, :string)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:system, :string)
    field(:type, :string)
    field(:uri, :string)
  end
end
