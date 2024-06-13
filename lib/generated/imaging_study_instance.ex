defmodule Fhir.Generated.ImagingStudyInstance do
  use TypedStruct

  typedstruct do
    field :_number, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :_uid, Fhir.Generated.Element
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :number, :float
        field :sopClass, Fhir.Generated.Coding
        field :title, :string
        field :uid, :string
  end
end
