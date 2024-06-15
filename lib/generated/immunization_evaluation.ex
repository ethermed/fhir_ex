defmodule Fhir.ImmunizationEvaluation do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_date, Fhir.Element
        field :_description, Fhir.Element
        field :_doseNumber, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_series, Fhir.Element
        field :_seriesDoses, Fhir.Element
        field :_status, Fhir.Element
        field :authority, Fhir.Reference
        field :contained, [Fhir.ResourceList], default: []
        field :date, :datetime
        field :description, :string
        field :doseNumber, :string
        field :doseStatus, Fhir.CodeableConcept
        field :doseStatusReason, [Fhir.CodeableConcept], default: []
        field :extension, [Fhir.Extension], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :immunizationEvent, Fhir.Reference
        field :implicitRules, :string
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :patient, Fhir.Reference
        field :resourceType, :string, default: "ImmunizationEvaluation"
        field :series, :string
        field :seriesDoses, :string
        field :status, :string
        field :targetDisease, Fhir.CodeableConcept
        field :text, Fhir.Narrative
  end
end
