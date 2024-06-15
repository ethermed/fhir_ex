defmodule Fhir.ImagingStudySeries do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_description, Fhir.Element
        field :_number, Fhir.Element
        field :_numberOfInstances, Fhir.Element
        field :_started, Fhir.Element
        field :_uid, Fhir.Element
        field :bodySite, Fhir.CodeableReference
        field :description, :string
        field :endpoint, [Fhir.Reference], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :instance, [Fhir.ImagingStudyInstance], default: []
        field :laterality, Fhir.CodeableConcept
        field :modality, Fhir.CodeableConcept
        field :modifierExtension, [Fhir.Extension], default: []
        field :number, :float
        field :numberOfInstances, :float
        field :performer, [Fhir.ImagingStudyPerformer], default: []
        field :specimen, [Fhir.Reference], default: []
        field :started, :datetime
        field :uid, :string
  end
end
