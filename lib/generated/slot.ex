defmodule Fhir.Slot do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_comment, Fhir.Element
        field :_end, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_overbooked, Fhir.Element
        field :_start, Fhir.Element
        field :_status, Fhir.Element
        field :appointmentType, [Fhir.CodeableConcept], default: []
        field :comment, :string
        field :contained, [Fhir.ResourceList], default: []
        field :end, :timestamp
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :overbooked, :boolean
        field :resourceType, :string, default: "Slot"
        field :schedule, Fhir.Reference
        field :serviceCategory, [Fhir.CodeableConcept], default: []
        field :serviceType, [Fhir.CodeableReference], default: []
        field :specialty, [Fhir.CodeableConcept], default: []
        field :start, :timestamp
        field :status, :string
        field :text, Fhir.Narrative
  end
end
