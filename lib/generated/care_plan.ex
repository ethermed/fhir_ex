defmodule Fhir.Generated.CarePlan do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, [Fhir.Generated.Element], default: []
        field :_intent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_title, Fhir.Generated.Element
        field :activity, [Fhir.Generated.CarePlanActivity], default: []
        field :addresses, [Fhir.Generated.CodeableReference], default: []
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :careTeam, [Fhir.Generated.Reference], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :contributor, [Fhir.Generated.Reference], default: []
        field :created, :datetime
        field :custodian, Fhir.Generated.Reference
        field :description, :string
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :goal, [Fhir.Generated.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :intent, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :partOf, [Fhir.Generated.Reference], default: []
        field :period, Fhir.Generated.Period
        field :replaces, [Fhir.Generated.Reference], default: []
        field :resourceType, :string, default: "CarePlan"
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :supportingInfo, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :title, :string
  end
end
