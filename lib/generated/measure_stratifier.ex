defmodule Fhir.Generated.MeasureStratifier do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :component, [Fhir.Generated.MeasureComponent], default: []
        field :criteria, Fhir.Generated.Expression
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :groupDefinition, Fhir.Generated.Reference
        field :id, :string
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
