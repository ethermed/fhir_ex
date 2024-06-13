defmodule Fhir.Generated.EncounterHistory do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_plannedEndDate, Fhir.Generated.Element
        field :_plannedStartDate, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :actualPeriod, Fhir.Generated.Period
        field :class, Fhir.Generated.CodeableConcept
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :language, :string
        field :length, Fhir.Generated.Duration
        field :location, [Fhir.Generated.EncounterHistoryLocation], default: []
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :plannedEndDate, :datetime
        field :plannedStartDate, :datetime
        field :resourceType, :string, default: "EncounterHistory"
        field :serviceType, [Fhir.Generated.CodeableReference], default: []
        field :status, :string
        field :subject, Fhir.Generated.Reference
        field :subjectStatus, Fhir.Generated.CodeableConcept
        field :text, Fhir.Generated.Narrative
        field :type, [Fhir.Generated.CodeableConcept], default: []
  end
end
