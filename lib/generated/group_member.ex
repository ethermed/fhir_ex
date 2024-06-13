defmodule Fhir.Generated.GroupMember do
  use TypedStruct

  typedstruct do
    field :_inactive, Fhir.Generated.Element
        field :entity, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :inactive, :boolean
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
  end
end
