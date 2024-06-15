defmodule Fhir.Procedure do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_implicitRules, Fhir.Element
        field :_instantiatesUri, [Fhir.Element], default: []
        field :_language, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_occurrenceString, Fhir.Element
        field :_recorded, Fhir.Element
        field :_reportedBoolean, Fhir.Element
        field :_status, Fhir.Element
        field :basedOn, [Fhir.Reference], default: []
        field :bodySite, [Fhir.CodeableConcept], default: []
        field :category, [Fhir.CodeableConcept], default: []
        field :code, Fhir.CodeableConcept
        field :complication, [Fhir.CodeableReference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :encounter, Fhir.Reference
        field :extension, [Fhir.Extension], default: []
        field :focalDevice, [Fhir.ProcedureFocalDevice], default: []
        field :focus, Fhir.Reference
        field :followUp, [Fhir.CodeableConcept], default: []
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :language, :string
        field :location, Fhir.Reference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceAge, Fhir.Age
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Period
        field :occurrenceRange, Fhir.Range
        field :occurrenceString, :string
        field :occurrenceTiming, Fhir.Timing
        field :outcome, Fhir.CodeableConcept
        field :partOf, [Fhir.Reference], default: []
        field :performer, [Fhir.ProcedurePerformer], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :recorded, :datetime
        field :recorder, Fhir.Reference
        field :report, [Fhir.Reference], default: []
        field :reportedBoolean, :boolean
        field :reportedReference, Fhir.Reference
        field :resourceType, :string, default: "Procedure"
        field :status, :string
        field :statusReason, Fhir.CodeableConcept
        field :subject, Fhir.Reference
        field :supportingInfo, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :used, [Fhir.CodeableReference], default: []
  end
end
