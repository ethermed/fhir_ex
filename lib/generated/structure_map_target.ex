defmodule Fhir.Generated.StructureMapTarget do
  use TypedStruct

  typedstruct do
    field :_context, Fhir.Generated.Element
        field :_element, Fhir.Generated.Element
        field :_listMode, [Fhir.Generated.Element], default: []
        field :_listRuleId, Fhir.Generated.Element
        field :_transform, Fhir.Generated.Element
        field :_variable, Fhir.Generated.Element
        field :context, :string
        field :element, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :listMode, [:string], default: []
        field :listRuleId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :parameter, [Fhir.Generated.StructureMapParameter], default: []
        field :transform, :string
        field :variable, :string
  end
end
