defmodule Fhir.Generated.BodyStructureIncludedStructure do
  use TypedStruct

  typedstruct do
    field :bodyLandmarkOrientation, [Fhir.Generated.BodyStructureBodyLandmarkOrientation], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :laterality, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :qualifier, [Fhir.Generated.CodeableConcept], default: []
        field :spatialReference, [Fhir.Generated.Reference], default: []
        field :structure, Fhir.Generated.CodeableConcept
  end
end
