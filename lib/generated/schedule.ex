defmodule Fhir.Generated.Schedule do
  use TypedStruct

  typedstruct do
    field :_active, Fhir.Generated.Element
        field :_comment, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_name, Fhir.Generated.Element
        field :active, :boolean
        field :actor, [Fhir.Generated.Reference], default: []
        field :comment, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :name, :string
        field :planningHorizon, Fhir.Generated.Period
        field :resourceType, :string, default: "Schedule"
        field :serviceCategory, [Fhir.Generated.CodeableConcept], default: []
        field :serviceType, [Fhir.Generated.CodeableReference], default: []
        field :specialty, [Fhir.Generated.CodeableConcept], default: []
        field :text, Fhir.Generated.Narrative
  end
end
