defmodule Fhir.v6().GroupMember do
  use TypedStruct

  typedstruct do
    field(:_inactive, Fhir.v6().Element)
    field(:entity, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:inactive, :boolean)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:period, Fhir.v6().Period)
  end
end
