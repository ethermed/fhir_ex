defmodule Fhir.Generated.BodyStructureBodyLandmarkOrientation do
  use TypedStruct

  typedstruct do
    field :clockFacePosition, [Fhir.Generated.CodeableConcept], default: []
        field :distanceFromLandmark, [Fhir.Generated.BodyStructureDistanceFromLandmark], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :landmarkDescription, [Fhir.Generated.CodeableConcept], default: []
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :surfaceOrientation, [Fhir.Generated.CodeableConcept], default: []
  end
end
