defmodule Fhir.CarePlan do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_created, Fhir.Element
        field :_description, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_instantiatesUri, [Fhir.Element], default: []
        field :_intent, Fhir.Element
        field :_language, Fhir.Element
        field :_status, Fhir.Element
        field :_title, Fhir.Element
        field :activity, [Fhir.CarePlanActivity], default: []
        field :addresses, [Fhir.CodeableReference], default: []
        field :basedOn, [Fhir.Reference], default: []
        field :careTeam, [Fhir.Reference], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :contributor, [Fhir.Reference], default: []
        field :created, :datetime
        field :custodian, Fhir.Reference
        field :description, :string
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :goal, [Fhir.Reference], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :intent, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :partOf, [Fhir.Reference], default: []
        field :period, Fhir.Period
        field :replaces, [Fhir.Reference], default: []
        field :resourceType, :string, default: "CarePlan"
        field :status, :string
        field :subject, Fhir.Reference
        field :supportingInfo, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :title, :string
  end
end
