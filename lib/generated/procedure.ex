defmodule Fhir.Generated.Procedure do
  use TypedStruct

  typedstruct do
    field :_implicitRules, Fhir.Generated.Element
        field :_instantiatesUri, [Fhir.Generated.Element], default: []
        field :_language, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_occurrenceString, Fhir.Generated.Element
        field :_recorded, Fhir.Generated.Element
        field :_reportedBoolean, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :bodySite, [Fhir.Generated.CodeableConcept], default: []
        field :category, [Fhir.Generated.CodeableConcept], default: []
        field :code, Fhir.Generated.CodeableConcept
        field :complication, [Fhir.Generated.CodeableReference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :encounter, Fhir.Generated.Reference
        field :extension, [Fhir.Generated.Extension], default: []
        field :focalDevice, [Fhir.Generated.ProcedureFocalDevice], default: []
        field :focus, Fhir.Generated.Reference
        field :followUp, [Fhir.Generated.CodeableConcept], default: []
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :instantiatesCanonical, [:string], default: []
        field :instantiatesUri, [:string], default: []
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceAge, Fhir.Generated.Age
        field :occurrenceDateTime, :string
        field :occurrencePeriod, Fhir.Generated.Period
        field :occurrenceRange, Fhir.Generated.Range
        field :occurrenceString, :string
        field :occurrenceTiming, Fhir.Generated.Timing
        field :outcome, Fhir.Generated.CodeableConcept
        field :partOf, [Fhir.Generated.Reference], default: []
        field :performer, [Fhir.Generated.ProcedurePerformer], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :recorded, :datetime
        field :recorder, Fhir.Generated.Reference
        field :report, [Fhir.Generated.Reference], default: []
        field :reportedBoolean, :boolean
        field :reportedReference, Fhir.Generated.Reference
        field :resourceType, :string, default: "Procedure"
        field :status, :string
        field :statusReason, Fhir.Generated.CodeableConcept
        field :subject, Fhir.Generated.Reference
        field :supportingInfo, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :used, [Fhir.Generated.CodeableReference], default: []
  end
end
