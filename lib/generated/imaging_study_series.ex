defmodule Fhir.Generated.ImagingStudySeries do
  use TypedStruct

  typedstruct do
    field :_description, Fhir.Generated.Element
        field :_number, Fhir.Generated.Element
        field :_numberOfInstances, Fhir.Generated.Element
        field :_started, Fhir.Generated.Element
        field :_uid, Fhir.Generated.Element
        field :bodySite, Fhir.Generated.CodeableReference
        field :description, :string
        field :endpoint, [Fhir.Generated.Reference], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :instance, [Fhir.Generated.ImagingStudyInstance], default: []
        field :laterality, Fhir.Generated.CodeableConcept
        field :modality, Fhir.Generated.CodeableConcept
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :number, :float
        field :numberOfInstances, :float
        field :performer, [Fhir.Generated.ImagingStudyPerformer], default: []
        field :specimen, [Fhir.Generated.Reference], default: []
        field :started, :datetime
        field :uid, :string
  end
end
