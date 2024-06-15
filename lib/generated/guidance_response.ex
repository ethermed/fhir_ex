defmodule Fhir.GuidanceResponse do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_moduleCanonical, Fhir.Element
        field :_moduleUri, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_status, Fhir.Element
        field :contained, [Fhir.ResourceList], default: []
        field :dataRequirement, [Fhir.DataRequirement], default: []
        field :encounter, Fhir.Reference
        field :evaluationMessage, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :moduleCanonical, :string
        field :moduleCodeableConcept, Fhir.CodeableConcept
        field :moduleUri, :string
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :datetime
        field :outputParameters, Fhir.Reference
        field :performer, Fhir.Reference
        field :reason, [Fhir.CodeableReference], default: []
        field :requestIdentifier, Fhir.Identifier
        field :resourceType, :string, default: "GuidanceResponse"
        field :result, [Fhir.Reference], default: []
        field :status, :string
        field :subject, Fhir.Reference
        field :text, Fhir.Narrative
  end
end
