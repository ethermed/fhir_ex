defmodule Fhir.v6().GraphDefinitionNode do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_nodeId, Fhir.v6().Element)
    field(:_type, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:nodeId, :string)
    field(:profile, :string)
    field(:type, :string)
  end
end
