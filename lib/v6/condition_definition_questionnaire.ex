defmodule Fhir.v6().ConditionDefinitionQuestionnaire do
  use TypedStruct

  typedstruct do
    field(:_purpose, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:purpose, :string)
    field(:reference, Fhir.v6().Reference)
  end
end
