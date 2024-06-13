defmodule Fhir.Generated.GenomicStudyInput do
  use TypedStruct

  typedstruct do
    field :extension, [Fhir.Generated.Extension], default: []
        field :file, Fhir.Generated.Reference
        field :generatedByIdentifier, Fhir.Generated.Identifier
        field :generatedByReference, Fhir.Generated.Reference
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
