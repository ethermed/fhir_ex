defmodule Fhir.Generated.Claim do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :accident, Fhir.Generated.ClaimAccident
        field :billablePeriod, Fhir.Generated.Period
        field :careTeam, [Fhir.Generated.ClaimCareTeam], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :diagnosis, [Fhir.Generated.ClaimDiagnosis], default: []
        field :diagnosisRelatedGroup, Fhir.Generated.CodeableConcept
        field :encounter, [Fhir.Generated.Reference], default: []
        field :enterer, Fhir.Generated.Reference
        field :event, [Fhir.Generated.ClaimEvent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :facility, Fhir.Generated.Reference
        field :fundsReserve, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.Generated.ClaimInsurance], default: []
        field :insurer, Fhir.Generated.Reference
        field :item, [Fhir.Generated.ClaimItem], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :originalPrescription, Fhir.Generated.Reference
        field :patient, Fhir.Generated.Reference
        field :patientPaid, Fhir.Generated.Money
        field :payee, Fhir.Generated.ClaimPayee
        field :prescription, Fhir.Generated.Reference
        field :priority, Fhir.Generated.CodeableConcept
        field :procedure, [Fhir.Generated.ClaimProcedure], default: []
        field :provider, Fhir.Generated.Reference
        field :referral, Fhir.Generated.Reference
        field :related, [Fhir.Generated.ClaimRelated], default: []
        field :resourceType, :string, default: "Claim"
        field :status, :string
        field :subType, Fhir.Generated.CodeableConcept
        field :supportingInfo, [Fhir.Generated.ClaimSupportingInfo], default: []
        field :text, Fhir.Generated.Narrative
        field :total, Fhir.Generated.Money
        field :traceNumber, [Fhir.Generated.Identifier], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :use, :string
  end
end
