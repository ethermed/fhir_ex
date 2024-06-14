defmodule Fhir.RequestOrchestrationOutput do
  use TypedStruct

  typedstruct do
    field(:_relatedData, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:relatedData, :string)
    field(:requirement, Fhir.DataRequirement)
    field(:title, :string)
  end
end
