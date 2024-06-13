defmodule Fhir.Generated.StructureMapSource do
  use TypedStruct

  typedstruct do
    field :_check, Fhir.Generated.Element
        field :_condition, Fhir.Generated.Element
        field :_context, Fhir.Generated.Element
        field :_defaultValue, Fhir.Generated.Element
        field :_element, Fhir.Generated.Element
        field :_listMode, Fhir.Generated.Element
        field :_logMessage, Fhir.Generated.Element
        field :_max, Fhir.Generated.Element
        field :_min, Fhir.Generated.Element
        field :_type, Fhir.Generated.Element
        field :_variable, Fhir.Generated.Element
        field :check, :string
        field :condition, :string
        field :context, :string
        field :defaultValue, :string
        field :element, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :listMode, :string
        field :logMessage, :string
        field :max, :string
        field :min, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, :string
        field :variable, :string
  end
end
