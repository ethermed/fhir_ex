defmodule Fhir.Generated.Basic do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :author, Fhir.Generated.Reference
        field :code, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :resourceType, :string, default: "Basic"
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
