defmodule Fhir.Claim do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_created, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_status, Fhir.Element
        field :_use, Fhir.Element
        field :accident, Fhir.ClaimAccident
        field :billablePeriod, Fhir.Period
        field :careTeam, [Fhir.ClaimCareTeam], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :created, :datetime
        field :diagnosis, [Fhir.ClaimDiagnosis], default: []
        field :diagnosisRelatedGroup, Fhir.CodeableConcept
        field :encounter, [Fhir.Reference], default: []
        field :enterer, Fhir.Reference
        field :event, [Fhir.ClaimEvent], default: []
        field :extension, [Fhir.Extension], default: []
        field :facility, Fhir.Reference
        field :fundsReserve, Fhir.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.ClaimInsurance], default: []
        field :insurer, Fhir.Reference
        field :item, [Fhir.ClaimItem], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :originalPrescription, Fhir.Reference
        field :patient, Fhir.Reference
        field :patientPaid, Fhir.Money
        field :payee, Fhir.ClaimPayee
        field :prescription, Fhir.Reference
        field :priority, Fhir.CodeableConcept
        field :procedure, [Fhir.ClaimProcedure], default: []
        field :provider, Fhir.Reference
        field :referral, Fhir.Reference
        field :related, [Fhir.ClaimRelated], default: []
        field :resourceType, :string, default: "Claim"
        field :status, :string
        field :subType, Fhir.CodeableConcept
        field :supportingInfo, [Fhir.ClaimSupportingInfo], default: []
        field :text, Fhir.Narrative
        field :total, Fhir.Money
        field :traceNumber, [Fhir.Identifier], default: []
        field :type, Fhir.CodeableConcept
        field :use, :string
  end
end
