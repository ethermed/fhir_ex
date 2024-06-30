defmodule Fhir.ChargeItemDefinitionApplicability do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:condition, Fhir.Expression)
    field(:effectivePeriod, Fhir.Period)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:relatedArtifact, Fhir.RelatedArtifact)
  end
end
