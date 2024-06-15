defmodule Fhir.MeasureSupplementalData do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_linkId, Fhir.Element
        field :code, Fhir.CodeableConcept
        field :criteria, Fhir.Expression
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :linkId, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :usage, [Fhir.CodeableConcept], default: []
  end
end
