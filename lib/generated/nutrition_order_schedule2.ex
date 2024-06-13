defmodule Fhir.Generated.NutritionOrderSchedule2 do
  use TypedStruct

  typedstruct do
    field :_asNeeded, Fhir.Generated.Element
        field :asNeeded, :boolean
        field :asNeededFor, Fhir.Generated.CodeableConcept
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :timing, [Fhir.Generated.Timing], default: []
  end
end
