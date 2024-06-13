defmodule Fhir.Generated.EnrollmentResponse do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_disposition, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_outcome, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :disposition, :string
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :organization, Fhir.Generated.Reference
        field :outcome, :string
        field :request, Fhir.Generated.Reference
        field :requestProvider, Fhir.Generated.Reference
        field :resourceType, :string, default: "EnrollmentResponse"
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
