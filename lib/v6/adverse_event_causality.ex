defmodule Fhir.v6().AdverseEventCausality do
  use TypedStruct

  typedstruct do
    field(:assessmentMethod, Fhir.v6().CodeableConcept)
    field(:author, Fhir.v6().Reference)
    field(:entityRelatedness, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
  end
end
