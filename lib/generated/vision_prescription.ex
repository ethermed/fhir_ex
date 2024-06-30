defmodule Fhir.VisionPrescription do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field(:_created, Fhir.Element)
    field(:_dateWritten, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:created, :datetime)
    field(:dateWritten, :datetime)
    field(:encounter, Fhir.Reference)
    field(:extension, [Fhir.Extension], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:lensSpecification, [Fhir.VisionPrescriptionLensSpecification], default: [])
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:patient, Fhir.Reference)
    field(:prescriber, Fhir.Reference)
    field(:resourceType, :string, default: "VisionPrescription")
    field(:status, :string)
    field(:text, Fhir.Narrative)
  end
end
