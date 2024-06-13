defmodule Fhir.Generated.ChargeItemDefinitionApplicability do
  use TypedStruct

  typedstruct do
    field :condition, Fhir.Generated.Expression
        field :effectivePeriod, Fhir.Generated.Period
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :relatedArtifact, Fhir.Generated.RelatedArtifact
  end
end
