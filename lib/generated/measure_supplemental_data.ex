defmodule Fhir.Generated.MeasureSupplementalData do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_linkId, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :criteria, Fhir.Generated.Expression
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :linkId, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :usage, [Fhir.Generated.CodeableConcept], default: []
  end
end
