defmodule Fhir.ConditionDefinitionMedication do
  use TypedStruct

  typedstruct do
    field(:category, Fhir.CodeableConcept)
    field(:code, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
  end
end
