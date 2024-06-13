defmodule Fhir.Generated.ImmunizationEvaluation do
  use TypedStruct

  typedstruct do
    field :_date, Fhir.Generated.Element
        field :_description, Fhir.Generated.Element
        field :_doseNumber, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_series, Fhir.Generated.Element
        field :_seriesDoses, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :authority, Fhir.Generated.Reference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :date, :datetime
        field :description, :string
        field :doseNumber, :string
        field :doseStatus, Fhir.Generated.CodeableConcept
        field :doseStatusReason, [Fhir.Generated.CodeableConcept], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :immunizationEvent, Fhir.Generated.Reference
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :patient, Fhir.Generated.Reference
        field :resourceType, :string, default: "ImmunizationEvaluation"
        field :series, :string
        field :seriesDoses, :string
        field :status, :string
        field :targetDisease, Fhir.Generated.CodeableConcept
        field :text, Fhir.Generated.Narrative
  end
end
