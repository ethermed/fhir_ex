defmodule Fhir.v6().ImagingStudySeries do
  use TypedStruct

  typedstruct do
    field(:_description, Fhir.v6().Element)
    field(:_number, Fhir.v6().Element)
    field(:_numberOfInstances, Fhir.v6().Element)
    field(:_started, Fhir.v6().Element)
    field(:_uid, Fhir.v6().Element)
    field(:bodySite, Fhir.v6().CodeableReference)
    field(:description, :string)
    field(:endpoint, [Fhir.v6().Reference], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:instance, [Fhir.v6().ImagingStudyInstance], default: [])
    field(:laterality, Fhir.v6().CodeableConcept)
    field(:modality, Fhir.v6().CodeableConcept)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:number, :float)
    field(:numberOfInstances, :float)
    field(:performer, [Fhir.v6().ImagingStudyPerformer], default: [])
    field(:specimen, [Fhir.v6().Reference], default: [])
    field(:started, :datetime)
    field(:uid, :string)
  end
end
