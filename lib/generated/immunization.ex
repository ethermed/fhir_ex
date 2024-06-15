defmodule Fhir.Immunization do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_expirationDate, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_isSubpotent, Fhir.Element
        field :_language, Fhir.Element
        field :_lotNumber, Fhir.Element
        field :_occurrenceDateTime, Fhir.Element
        field :_occurrenceString, Fhir.Element
        field :_primarySource, Fhir.Element
        field :_status, Fhir.Element
        field :administeredProduct, Fhir.CodeableReference
        field :basedOn, [Fhir.Reference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :doseQuantity, Fhir.Quantity
        field :encounter, Fhir.Reference
        field :expirationDate, :date
        field :extension, [Fhir.Extension], default: []
        field :fundingSource, Fhir.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :informationSource, Fhir.CodeableReference
        field :isSubpotent, :boolean
        field :language, :string
        field :location, Fhir.Reference
        field :lotNumber, :string
        field :manufacturer, Fhir.CodeableReference
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :note, [Fhir.Annotation], default: []
        field :occurrenceDateTime, :string
        field :occurrenceString, :string
        field :patient, Fhir.Reference
        field :performer, [Fhir.ImmunizationPerformer], default: []
        field :primarySource, :boolean
        field :programEligibility, [Fhir.ImmunizationProgramEligibility], default: []
        field :protocolApplied, [Fhir.ImmunizationProtocolApplied], default: []
        field :reaction, [Fhir.ImmunizationReaction], default: []
        field :reason, [Fhir.CodeableReference], default: []
        field :resourceType, :string, default: "Immunization"
        field :route, Fhir.CodeableConcept
        field :site, Fhir.CodeableConcept
        field :status, :string
        field :statusReason, Fhir.CodeableConcept
        field :subpotentReason, [Fhir.CodeableConcept], default: []
        field :supportingInformation, [Fhir.Reference], default: []
        field :text, Fhir.Narrative
        field :vaccineCode, Fhir.CodeableConcept
  end
end
