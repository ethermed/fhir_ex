defmodule Fhir.Generated.VisionPrescription do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_dateWritten, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :dateWritten, :datetime
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :lensSpecification, [Fhir.Generated.VisionPrescriptionLensSpecification], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :patient, Fhir.Generated.Reference
        field :prescriber, Fhir.Generated.Reference
        field :resourceType, :string, default: "VisionPrescription"
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
