defmodule Fhir.MedicationKnowledgeMonograph do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:source, Fhir.Reference)
    field(:type, Fhir.CodeableConcept)
  end
end
