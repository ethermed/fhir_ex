defmodule Fhir.Generated.ExplanationOfBenefitInsurance do
  use TypedStruct

  typedstruct do
    field :_focal, Fhir.Generated.Element
        field :_preAuthRef, [Fhir.Generated.Element], default: []
        field :coverage, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :focal, :boolean
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :preAuthRef, [:string], default: []
  end
end
