defmodule Fhir.Generated.Slot do
  use TypedStruct

  typedstruct do
    field :_comment, Fhir.Generated.Element
        field :_end, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_overbooked, Fhir.Generated.Element
        field :_start, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :appointmentType, [Fhir.Generated.CodeableConcept], default: []
        field :comment, :string
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :end, :timestamp
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :overbooked, :boolean
        field :resourceType, :string, default: "Slot"
        field :schedule, Fhir.Generated.Reference
        field :serviceCategory, [Fhir.Generated.CodeableConcept], default: []
        field :serviceType, [Fhir.Generated.CodeableReference], default: []
        field :specialty, [Fhir.Generated.CodeableConcept], default: []
        field :start, :timestamp
        field :status, :string
        field :text, Fhir.Generated.Narrative
  end
end
