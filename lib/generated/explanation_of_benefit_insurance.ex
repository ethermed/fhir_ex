defmodule Fhir.ExplanationOfBenefitInsurance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_focal, Fhir.Element
        field :_preAuthRef, [Fhir.Element], default: []
        field :coverage, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :focal, :boolean
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :preAuthRef, [:string], default: []
  end
end
