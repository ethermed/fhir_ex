defmodule Fhir.Schedule do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_active, Fhir.Element
        field :_comment, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_name, Fhir.Element
        field :active, :boolean
        field :actor, [Fhir.Reference], default: []
        field :comment, :string
        field :contained, [Fhir.ResourceList], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :name, :string
        field :planningHorizon, Fhir.Period
        field :resourceType, :string, default: "Schedule"
        field :serviceCategory, [Fhir.CodeableConcept], default: []
        field :serviceType, [Fhir.CodeableReference], default: []
        field :specialty, [Fhir.CodeableConcept], default: []
        field :text, Fhir.Narrative
  end
end
