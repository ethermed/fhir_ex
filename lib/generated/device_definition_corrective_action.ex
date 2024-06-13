defmodule Fhir.Generated.DeviceDefinitionCorrectiveAction do
  use TypedStruct

  typedstruct do
    field :_recall, Fhir.Generated.Element
        field :_scope, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :period, Fhir.Generated.Period
        field :recall, :boolean
        field :scope, :string
  end
end
