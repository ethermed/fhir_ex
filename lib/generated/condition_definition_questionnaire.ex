defmodule Fhir.ConditionDefinitionQuestionnaire do
  use TypedStruct

  typedstruct do
    field(:_purpose, Fhir.Element)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:purpose, :string)
    field(:reference, Fhir.Reference)
  end
end
