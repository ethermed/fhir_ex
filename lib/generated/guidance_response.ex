defmodule Fhir.Generated.GuidanceResponse do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_moduleCanonical, Fhir.Generated.Element
        field :_moduleUri, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :dataRequirement, [Fhir.Generated.DataRequirement], default: []
        field :encounter, Fhir.Generated.Reference
        field :evaluationMessage, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :moduleCanonical, :string
        field :moduleCodeableConcept, Fhir.Generated.CodeableConcept
        field :moduleUri, :string
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :datetime
        field :outputParameters, Fhir.Generated.Reference
        field :performer, Fhir.Generated.Reference
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :requestIdentifier, Fhir.Generated.Identifier
        field :resourceType, :string, default: "GuidanceResponse"
        field :result, [Fhir.Generated.Reference], default: []
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :text, Fhir.Generated.Narrative
  end
end
