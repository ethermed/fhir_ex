defmodule Fhir.PlanDefinitionActor do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_title, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:option, [Fhir.PlanDefinitionOption], default: [])
    field(:title, :string)
  end
end
