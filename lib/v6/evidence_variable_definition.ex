defmodule Fhir.v6().EvidenceVariableDefinition do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:description, :string)
    field(:directnessMatch, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:intended, Fhir.v6().Reference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:observed, Fhir.v6().Reference)
    field(:variableRole, Fhir.v6().CodeableConcept)
  end
end
