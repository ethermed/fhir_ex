defmodule Fhir.v6().BodyStructureBodyLandmarkOrientation do
  use TypedStruct

  typedstruct do
    field(:clockFacePosition, [Fhir.v6().CodeableConcept], default: [])
    field(:distanceFromLandmark, [Fhir.v6().BodyStructureDistanceFromLandmark], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:landmarkDescription, [Fhir.v6().CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:surfaceOrientation, [Fhir.v6().CodeableConcept], default: [])
  end
end
