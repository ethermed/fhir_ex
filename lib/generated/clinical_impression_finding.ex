defmodule Fhir.Generated.ClinicalImpressionFinding do
  use TypedStruct

  typedstruct do
    field :_basis, Fhir.Generated.Element
        field :basis, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :item, Fhir.Generated.CodeableReference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
