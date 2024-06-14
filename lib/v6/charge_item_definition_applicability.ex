defmodule Fhir.v6().ChargeItemDefinitionApplicability do
  use TypedStruct

  typedstruct do
    field(:condition, Fhir.v6().Expression)
    field(:effectivePeriod, Fhir.v6().Period)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:relatedArtifact, Fhir.v6().RelatedArtifact)
  end
end
