defmodule Fhir.OperationDefinitionReferencedFrom do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_source, Fhir.Element)
    field(:_sourceId, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:source, :string)
    field(:sourceId, :string)
  end
end
