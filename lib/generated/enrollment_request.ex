defmodule Fhir.Generated.EnrollmentRequest do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :candidate, Fhir.Generated.Reference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :coverage, Fhir.Generated.Reference
        field :created, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :insurer, Fhir.Generated.Reference
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :provider, Fhir.Generated.Reference
        field :resourceType, :string, default: "EnrollmentRequest"
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
