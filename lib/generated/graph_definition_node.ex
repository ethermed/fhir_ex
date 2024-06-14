defmodule Fhir.GraphDefinitionNode do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_nodeId, Fhir.Element)
    field(:_type, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:nodeId, :string)
    field(:profile, :string)
    field(:type, :string)
  end
end
