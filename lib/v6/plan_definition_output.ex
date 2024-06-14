defmodule Fhir.v6().PlanDefinitionOutput do
  use TypedStruct

  typedstruct do
    field(:_relatedData, Fhir.v6().Element)
    field(:_title, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:relatedData, :string)
    field(:requirement, Fhir.v6().DataRequirement)
    field(:title, :string)
  end
end
