defmodule Fhir.v6().ResearchStudyAssociatedParty do
  use TypedStruct

  typedstruct do
    field(:_name, Fhir.v6().Element)
    field(:classifier, [Fhir.v6().CodeableConcept], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:party, Fhir.v6().Reference)
    field(:period, [Fhir.v6().Period], default: [])
    field(:role, Fhir.v6().CodeableConcept)
  end
end
