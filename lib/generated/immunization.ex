defmodule Fhir.Generated.Immunization do
  use TypedStruct

  typedstruct do
    field :_expirationDate, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_isSubpotent, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_lotNumber, Fhir.Generated.Element
        field :_occurrenceDateTime, Fhir.Generated.Element
        field :_occurrenceString, Fhir.Generated.Element
        field :_primarySource, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :administeredProduct, Fhir.Generated.CodeableReference
        field :basedOn, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :doseQuantity, Fhir.Generated.Quantity
        field :encounter, Fhir.Generated.Reference
        field :expirationDate, :date
        field :extension, [Fhir.Generated.Extension], default: []
        field :fundingSource, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, Fhir.Generated.CodeableReference
        field :isSubpotent, :boolean
        field :language, :string
        field :location, Fhir.Generated.Reference
        field :lotNumber, :string
        field :manufacturer, Fhir.Generated.CodeableReference
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :note, [Fhir.Generated.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrenceString, :string
        field :patient, Fhir.Generated.Reference
        field :performer, [Fhir.Generated.ImmunizationPerformer], default: []
        field :primarySource, :boolean
        field :programEligibility, [Fhir.Generated.ImmunizationProgramEligibility], default: []
        field :protocolApplied, [Fhir.Generated.ImmunizationProtocolApplied], default: []
        field :reaction, [Fhir.Generated.ImmunizationReaction], default: []
        field :reason, [Fhir.Generated.CodeableReference], default: []
        field :resourceType, :string, default: "Immunization"
        field :route, Fhir.Generated.CodeableConcept
        field :site, Fhir.Generated.CodeableConcept
        field :status, :string
        field :statusReason, Fhir.Generated.CodeableConcept
        field :subpotentReason, [Fhir.Generated.CodeableConcept], default: []
        field :supportingInformation, [Fhir.Generated.Reference], default: []
        field :text, Fhir.Generated.Narrative
        field :vaccineCode, Fhir.Generated.CodeableConcept
  end
end
