defmodule Fhir.v6().BodyStructureIncludedStructure do
  use TypedStruct

  typedstruct do
    field(:bodyLandmarkOrientation, [Fhir.v6().BodyStructureBodyLandmarkOrientation], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:laterality, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:qualifier, [Fhir.v6().CodeableConcept], default: [])
    field(:spatialReference, [Fhir.v6().Reference], default: [])
    field(:structure, Fhir.v6().CodeableConcept)
  end
end
