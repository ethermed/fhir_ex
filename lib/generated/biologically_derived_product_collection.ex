defmodule Fhir.Generated.BiologicallyDerivedProductCollection do
  use TypedStruct

  typedstruct do
    field :_collectedDateTime, Fhir.Generated.Element
        field :collectedDateTime, :string
        field :collectedPeriod, Fhir.Generated.Period
        field :collector, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :source, Fhir.Generated.Reference
  end
end
