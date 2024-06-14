defmodule Fhir.AllergyIntoleranceReaction do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_onset, Fhir.Element)
    field(:_severity, Fhir.Element)
    field(:description, :string)
    field(:exposureRoute, Fhir.CodeableConcept)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:manifestation, [Fhir.CodeableReference], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:onset, :datetime)
    field(:severity, :string)
    field(:substance, Fhir.CodeableConcept)
  end
end
