defmodule Fhir.BiologicallyDerivedProductCollection do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_collectedDateTime, Fhir.Element
        field :collectedDateTime, :string
        field :collectedPeriod, Fhir.Period
        field :collector, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Extension], default: []
        field :source, Fhir.Reference
  end
end
