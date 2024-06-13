defmodule Fhir.Generated.MessageHeader do
  use TypedStruct

  typedstruct do
    field :_eventCanonical, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :author, Fhir.Generated.Reference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :definition, :string
        field :destination, [Fhir.Generated.MessageHeaderDestination], default: []
        field :eventCanonical, :string
        field :eventCoding, Fhir.Generated.Coding
        field :extension, [Fhir.Generated.Extension], default: []
        field :focus, [Fhir.Generated.Reference], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :reason, Fhir.Generated.CodeableConcept
        field :resourceType, :string, default: "MessageHeader"
        field :response, Fhir.Generated.MessageHeaderResponse
        field :responsible, Fhir.Generated.Reference
        field :sender, Fhir.Generated.Reference
        field :source, Fhir.Generated.MessageHeaderSource
        field :text, Fhir.Generated.Narrative
  end
end
