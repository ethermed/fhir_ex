defmodule Fhir.NutritionOrderSchedule1 do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_asNeeded, Fhir.Element)
    field(:asNeeded, :boolean)
    field(:asNeededFor, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:timing, [Fhir.Timing], default: [])
  end
end
