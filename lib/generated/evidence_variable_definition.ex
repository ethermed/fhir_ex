defmodule Fhir.EvidenceVariableDefinition do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:description, :string)
    field(:directnessMatch, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:intended, Fhir.Reference)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:observed, Fhir.Reference)
    field(:variableRole, Fhir.CodeableConcept)
  end
end
