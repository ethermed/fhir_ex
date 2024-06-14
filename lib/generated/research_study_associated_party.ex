defmodule Fhir.ResearchStudyAssociatedParty do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.Element)
    field(:classifier, [Fhir.CodeableConcept], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:party, Fhir.Reference)
    field(:period, [Fhir.Period], default: [])
    field(:role, Fhir.CodeableConcept)
  end
end
