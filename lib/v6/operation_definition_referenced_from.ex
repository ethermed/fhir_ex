defmodule Fhir.v6().OperationDefinitionReferencedFrom do
  use TypedStruct

  typedstruct do
    field(:_source, Fhir.v6().Element)
    field(:_sourceId, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:source, :string)
    field(:sourceId, :string)
  end
end
