defmodule Fhir.v6().TestPlanScript do
  use TypedStruct

  typedstruct do
    field(:_sourceString, Fhir.v6().Element)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:language, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:sourceReference, Fhir.v6().Reference)
    field(:sourceString, :string)
  end
end
