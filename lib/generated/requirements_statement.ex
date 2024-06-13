defmodule Fhir.Generated.RequirementsStatement do
  use TypedStruct

  typedstruct do
    field :_conditionality, Fhir.Generated.Element
        field :_conformance, [Fhir.Generated.Element], default: []
        field :_derivedFrom, Fhir.Generated.Element
        field :_key, Fhir.Generated.Element
        field :_label, Fhir.Generated.Element
        field :_parent, Fhir.Generated.Element
        field :_reference, [Fhir.Generated.Element], default: []
        field :_requirement, Fhir.Generated.Element
        field :_satisfiedBy, [Fhir.Generated.Element], default: []
        field :conditionality, :boolean
        field :conformance, [:string], default: []
        field :derivedFrom, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :key, :string
        field :label, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :parent, :string
        field :reference, [:string], default: []
        field :requirement, :string
        field :satisfiedBy, [:string], default: []
        field :source, [Fhir.Generated.Reference], default: []
  end
end
