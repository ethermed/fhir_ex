defmodule Fhir.v6().DetectedIssueMitigation do
  use TypedStruct

  typedstruct do
    field(:_date, Fhir.v6().Element)
    field(:action, Fhir.v6().CodeableConcept)
    field(:author, Fhir.v6().Reference)
    field(:date, :datetime)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
  end
end
