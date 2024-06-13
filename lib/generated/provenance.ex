defmodule Fhir.Generated.Provenance do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_occurredDateTime, Fhir.Generated.Element
        field :_policy, [Fhir.Generated.Element], default: []
        field :_recorded, Fhir.Generated.Element
        field :activity, Fhir.Generated.CodeableConcept
        field :agent, [Fhir.Generated.ProvenanceAgent], default: []
        field :authorization, [Fhir.Generated.CodeableReference], default: []
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :encounter, Fhir.Generated.Reference
        field :entity, [Fhir.Generated.ProvenanceEntity], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :occurredDateTime, :string
        field :occurredPeriod, Fhir.Generated.Period
        field :patient, Fhir.Generated.Reference
        field :policy, [:string], default: []
        field :recorded, :timestamp
        field :resourceType, :string, default: "Provenance"
        field :signature, [Fhir.Generated.Signature], default: []
        field :target, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
  end
end
