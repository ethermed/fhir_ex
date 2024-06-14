defmodule Fhir.v6().NutritionOrderSchedule1 do
  use TypedStruct

  typedstruct do
    field(:_asNeeded, Fhir.v6().Element)
    field(:asNeeded, :boolean)
    field(:asNeededFor, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:timing, [Fhir.v6().Timing], default: [])
  end
end
