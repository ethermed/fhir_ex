defmodule Fhir.Generated.CoverageEligibilityRequestInsurance do
  use TypedStruct

  typedstruct do
    field :_businessArrangement, Fhir.Generated.Element
        field :_focal, Fhir.Generated.Element
        field :businessArrangement, :string
        field :coverage, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :focal, :boolean
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
  end
end
