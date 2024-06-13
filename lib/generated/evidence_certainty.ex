defmodule Fhir.Generated.EvidenceCertainty do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_rater, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :rater, :string
        field :rating, Fhir.Generated.CodeableConcept
        field :subcomponent, [Fhir.Generated.EvidenceCertainty], default: []
        field :type, Fhir.Generated.CodeableConcept
  end
end
