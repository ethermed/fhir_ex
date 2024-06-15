defmodule Fhir.BodyStructureIncludedStructure do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :bodyLandmarkOrientation, [Fhir.BodyStructureBodyLandmarkOrientation], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :laterality, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
        field :qualifier, [Fhir.CodeableConcept], default: []
        field :spatialReference, [Fhir.Reference], default: []
        field :structure, Fhir.CodeableConcept
  end
end
