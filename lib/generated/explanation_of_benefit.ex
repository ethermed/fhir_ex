defmodule Fhir.ExplanationOfBenefit do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_created, Fhir.Element
        field :_disposition, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_outcome, Fhir.Element
        field :_preAuthRef, [Fhir.Element], default: []
        field :_precedence, Fhir.Element
        field :_status, Fhir.Element
        field :_use, Fhir.Element
        field :accident, Fhir.ExplanationOfBenefitAccident
        field :addItem, [Fhir.ExplanationOfBenefitAddItem], default: []
        field :adjudication, [Fhir.ExplanationOfBenefitAdjudication], default: []
        field :benefitBalance, [Fhir.ExplanationOfBenefitBenefitBalance], default: []
        field :benefitPeriod, Fhir.Period
        field :billablePeriod, Fhir.Period
        field :careTeam, [Fhir.ExplanationOfBenefitCareTeam], default: []
        field :claim, Fhir.Reference
        field :claimResponse, Fhir.Reference
        field :contained, [Fhir.ResourceList], default: []
        field :created, :datetime
        field :decision, Fhir.CodeableConcept
        field :diagnosis, [Fhir.ExplanationOfBenefitDiagnosis], default: []
        field :diagnosisRelatedGroup, Fhir.CodeableConcept
        field :disposition, :string
        field :encounter, [Fhir.Reference], default: []
        field :enterer, Fhir.Reference
        field :event, [Fhir.ExplanationOfBenefitEvent], default: []
        field :extension, [Fhir.Extension], default: []
        field :facility, Fhir.Reference
        field :form, Fhir.Attachment
        field :formCode, Fhir.CodeableConcept
        field :fundsReserve, Fhir.CodeableConcept
        field :fundsReserveRequested, Fhir.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.ExplanationOfBenefitInsurance], default: []
        field :insurer, Fhir.Reference
        field :item, [Fhir.ExplanationOfBenefitItem], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :originalPrescription, Fhir.Reference
        field :outcome, :string
        field :patient, Fhir.Reference
        field :patientPaid, Fhir.Money
        field :payee, Fhir.ExplanationOfBenefitPayee
        field :payment, Fhir.ExplanationOfBenefitPayment
        field :preAuthRef, [:string], default: []
        field :preAuthRefPeriod, [Fhir.Period], default: []
        field :precedence, :float
        field :prescription, Fhir.Reference
        field :priority, Fhir.CodeableConcept
        field :procedure, [Fhir.ExplanationOfBenefitProcedure], default: []
        field :processNote, [Fhir.ExplanationOfBenefitProcessNote], default: []
        field :provider, Fhir.Reference
        field :referral, Fhir.Reference
        field :related, [Fhir.ExplanationOfBenefitRelated], default: []
        field :resourceType, :string, default: "ExplanationOfBenefit"
        field :status, :string
        field :subType, Fhir.CodeableConcept
        field :supportingInfo, [Fhir.ExplanationOfBenefitSupportingInfo], default: []
        field :text, Fhir.Narrative
        field :total, [Fhir.ExplanationOfBenefitTotal], default: []
        field :traceNumber, [Fhir.Identifier], default: []
        field :type, Fhir.CodeableConcept
        field :use, :string
  end
end
