defmodule Fhir.DeviceDefinitionCorrectiveAction do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_recall, Fhir.Element
        field :_scope, Fhir.Element
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :period, Fhir.Period
        field :recall, :boolean
        field :scope, :string
  end
end
