defmodule Fhir.Generated.ExplanationOfBenefit do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_disposition, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_outcome, Fhir.Generated.Element
        field :_preAuthRef, [Fhir.Generated.Element], default: []
        field :_precedence, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :accident, Fhir.Generated.ExplanationOfBenefitAccident
        field :addItem, [Fhir.Generated.ExplanationOfBenefitAddItem], default: []
        field :adjudication, [Fhir.Generated.ExplanationOfBenefitAdjudication], default: []
        field :benefitBalance, [Fhir.Generated.ExplanationOfBenefitBenefitBalance], default: []
        field :benefitPeriod, Fhir.Generated.Period
        field :billablePeriod, Fhir.Generated.Period
        field :careTeam, [Fhir.Generated.ExplanationOfBenefitCareTeam], default: []
        field :claim, Fhir.Generated.Reference
        field :claimResponse, Fhir.Generated.Reference
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :decision, Fhir.Generated.CodeableConcept
        field :diagnosis, [Fhir.Generated.ExplanationOfBenefitDiagnosis], default: []
        field :diagnosisRelatedGroup, Fhir.Generated.CodeableConcept
        field :disposition, :string
        field :encounter, [Fhir.Generated.Reference], default: []
        field :enterer, Fhir.Generated.Reference
        field :event, [Fhir.Generated.ExplanationOfBenefitEvent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :facility, Fhir.Generated.Reference
        field :form, Fhir.Generated.Attachment
        field :formCode, Fhir.Generated.CodeableConcept
        field :fundsReserve, Fhir.Generated.CodeableConcept
        field :fundsReserveRequested, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.Generated.ExplanationOfBenefitInsurance], default: []
        field :insurer, Fhir.Generated.Reference
        field :item, [Fhir.Generated.ExplanationOfBenefitItem], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :originalPrescription, Fhir.Generated.Reference
        field :outcome, :string
        field :patient, Fhir.Generated.Reference
        field :patientPaid, Fhir.Generated.Money
        field :payee, Fhir.Generated.ExplanationOfBenefitPayee
        field :payment, Fhir.Generated.ExplanationOfBenefitPayment
        field :preAuthRef, [:string], default: []
        field :preAuthRefPeriod, [Fhir.Generated.Period], default: []
        field :precedence, :float
        field :prescription, Fhir.Generated.Reference
        field :priority, Fhir.Generated.CodeableConcept
        field :procedure, [Fhir.Generated.ExplanationOfBenefitProcedure], default: []
        field :processNote, [Fhir.Generated.ExplanationOfBenefitProcessNote], default: []
        field :provider, Fhir.Generated.Reference
        field :referral, Fhir.Generated.Reference
        field :related, [Fhir.Generated.ExplanationOfBenefitRelated], default: []
        field :resourceType, :string, default: "ExplanationOfBenefit"
        field :status, :string
        field :subType, Fhir.Generated.CodeableConcept
        field :supportingInfo, [Fhir.Generated.ExplanationOfBenefitSupportingInfo], default: []
        field :text, Fhir.Generated.Narrative
        field :total, [Fhir.Generated.ExplanationOfBenefitTotal], default: []
        field :traceNumber, [Fhir.Generated.Identifier], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :use, :string
  end
end
