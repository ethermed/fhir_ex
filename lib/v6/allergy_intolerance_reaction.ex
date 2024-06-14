defmodule Fhir.v6().AllergyIntoleranceReaction do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_onset, Fhir.v6().Element)
    field(:_severity, Fhir.v6().Element)
    field(:description, :string)
    field(:exposureRoute, Fhir.v6().CodeableConcept)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:manifestation, [Fhir.v6().CodeableReference], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:onset, :datetime)
    field(:severity, :string)
    field(:substance, Fhir.v6().CodeableConcept)
  end
end
