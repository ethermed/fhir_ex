defmodule Fhir.CoverageEligibilityRequestSupportingInfo do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_appliesToAll, Fhir.Element
        field :_sequence, Fhir.Element
        field :appliesToAll, :boolean
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :information, Fhir.Reference
        field :modifierExtension, [Fhir.Extension], default: []
        field :sequence, :float
  end
end
