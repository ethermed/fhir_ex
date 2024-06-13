defmodule Fhir.Generated.EvidenceSampleSize do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_knownDataCount, Fhir.Generated.Element
        field :_numberOfParticipants, Fhir.Generated.Element
        field :_numberOfStudies, Fhir.Generated.Element
        field :description, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :knownDataCount, :float
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :numberOfParticipants, :float
        field :numberOfStudies, :float
  end
end
