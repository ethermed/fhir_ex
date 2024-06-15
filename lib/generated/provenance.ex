defmodule Fhir.Provenance do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_occurredDateTime, Fhir.Element
        field :_policy, [Fhir.Element], default: []
        field :_recorded, Fhir.Element
        field :activity, Fhir.CodeableConcept
        field :agent, [Fhir.ProvenanceAgent], default: []
        field :authorization, [Fhir.CodeableReference], default: []
        field :basedOn, [Fhir.Reference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :encounter, Fhir.Reference
        field :entity, [Fhir.ProvenanceEntity], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :implicitRules, :string
        field :language, :string
        field :location, Fhir.Reference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :occurredDateTime, :string
        field :occurredPeriod, Fhir.Period
        field :patient, Fhir.Reference
        field :policy, [:string], default: []
        field :recorded, :timestamp
        field :resourceType, :string, default: "Provenance"
        field :signature, [Fhir.Signature], default: []
        field :target, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
  end
end
