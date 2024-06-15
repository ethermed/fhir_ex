defmodule Fhir.EvidenceSampleSize do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_knownDataCount, Fhir.Element
        field :_numberOfParticipants, Fhir.Element
        field :_numberOfStudies, Fhir.Element
        field :description, :string
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :knownDataCount, :float
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :numberOfParticipants, :float
        field :numberOfStudies, :float
  end
end
