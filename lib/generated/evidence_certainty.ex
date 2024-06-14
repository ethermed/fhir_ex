defmodule Fhir.EvidenceCertainty do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.Element)
    field(:_rater, Fhir.Element)
    field(:description, :string)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:note, [Fhir.Annotation], default: [])
    field(:rater, :string)
    field(:rating, Fhir.CodeableConcept)
    field(:subcomponent, [Fhir.EvidenceCertainty], default: [])
    field(:type, Fhir.CodeableConcept)
  end
end
