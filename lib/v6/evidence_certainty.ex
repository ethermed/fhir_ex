defmodule Fhir.v6().EvidenceCertainty do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_rater, Fhir.v6().Element)
    field(:description, :string)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:note, [Fhir.v6().Annotation], default: [])
    field(:rater, :string)
    field(:rating, Fhir.v6().CodeableConcept)
    field(:subcomponent, [Fhir.v6().EvidenceCertainty], default: [])
    field(:type, Fhir.v6().CodeableConcept)
  end
end