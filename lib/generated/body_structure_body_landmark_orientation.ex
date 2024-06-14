defmodule Fhir.BodyStructureBodyLandmarkOrientation do
  use TypedStruct

  typedstruct do
    field(:clockFacePosition, [Fhir.CodeableConcept], default: [])
    field(:distanceFromLandmark, [Fhir.BodyStructureDistanceFromLandmark], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:landmarkDescription, [Fhir.CodeableConcept], default: [])
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:surfaceOrientation, [Fhir.CodeableConcept], default: [])
  end
end
