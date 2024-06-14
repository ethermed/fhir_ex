defmodule Fhir.v6().ImmunizationReaction do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:_reported, Fhir.v6().Element)
    field(:date, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:manifestation, Fhir.v6().CodeableReference)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:reported, :boolean)
  end
end
