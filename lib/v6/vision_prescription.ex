defmodule Fhir.v6().VisionPrescription do
  use TypedStruct

  typedstruct do
    field(:_created, Fhir.v6().Element)
    field(:_dateWritten, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:created, :datetime)
    field(:dateWritten, :datetime)
    field(:encounter, Fhir.v6().Reference)
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:lensSpecification, [Fhir.v6().VisionPrescriptionLensSpecification], default: [])
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:patient, Fhir.v6().Reference)
    field(:prescriber, Fhir.v6().Reference)
    field(:resourceType, :string, default: "VisionPrescription")
    field(:status, :string)
    field(:text, Fhir.v6().Narrative)
  end
end
