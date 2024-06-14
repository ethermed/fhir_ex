defmodule Fhir.GroupMember do
  use TypedStruct

  typedstruct do
    field(:_inactive, Fhir.Element)
    field(:entity, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:inactive, :boolean)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:period, Fhir.Period)
  end
end
