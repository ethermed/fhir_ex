defmodule Fhir.Generated.ClaimResponseError do
  use TypedStruct

  typedstruct do
    field :_detailSequence, Fhir.Generated.Element
        field :_expression, [Fhir.Generated.Element], default: []
        field :_itemSequence, Fhir.Generated.Element
        field :_subDetailSequence, Fhir.Generated.Element
        field :code, Fhir.Generated.CodeableConcept
        field :detailSequence, :float
        field :expression, [:string], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :itemSequence, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :subDetailSequence, :float
  end
end
