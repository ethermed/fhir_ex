defmodule Fhir.Generated.CoverageEligibilityRequestSupportingInfo do
  use TypedStruct

  typedstruct do
    field :_appliesToAll, Fhir.Generated.Element
        field :_sequence, Fhir.Generated.Element
        field :appliesToAll, :boolean
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :information, Fhir.Generated.Reference
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :sequence, :float
  end
end
