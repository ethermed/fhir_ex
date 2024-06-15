defmodule Fhir.ClaimResponse do
  use TypedStruct

  typedstruct do
    plugin(TypedStructEctoChangeset)
    plugin(TypedStructCtor)
    field :_created, Fhir.Element
        field :_disposition, Fhir.Element
        field :_implicitRules, Fhir.Element
        field :_language, Fhir.Element
        field :_outcome, Fhir.Element
        field :_preAuthRef, Fhir.Element
        field :_status, Fhir.Element
        field :_use, Fhir.Element
        field :addItem, [Fhir.ClaimResponseAddItem], default: []
        field :adjudication, [Fhir.ClaimResponseAdjudication], default: []
        field :communicationRequest, [Fhir.Reference], default: []
        field :contained, [Fhir.ResourceList], default: []
        field :created, :datetime
        field :decision, Fhir.CodeableConcept
        field :diagnosisRelatedGroup, Fhir.CodeableConcept
        field :disposition, :string
        field :encounter, [Fhir.Reference], default: []
        field :error, [Fhir.ClaimResponseError], default: []
        field :event, [Fhir.ClaimResponseEvent], default: []
        field :extension, [Fhir.Extension], default: []
        field :form, Fhir.Attachment
        field :formCode, Fhir.CodeableConcept
        field :fundsReserve, Fhir.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.ClaimResponseInsurance], default: []
        field :insurer, Fhir.Reference
        field :item, [Fhir.ClaimResponseItem], default: []
        field :language, :string
        field :meta, Fhir.Meta
        field :modifierExtension, [Fhir.Extension], default: []
        field :outcome, :string
        field :patient, Fhir.Reference
        field :payeeType, Fhir.CodeableConcept
        field :payment, Fhir.ClaimResponsePayment
        field :preAuthPeriod, Fhir.Period
        field :preAuthRef, :string
        field :processNote, [Fhir.ClaimResponseProcessNote], default: []
        field :request, Fhir.Reference
        field :requestor, Fhir.Reference
        field :resourceType, :string, default: "ClaimResponse"
        field :status, :string
        field :subType, Fhir.CodeableConcept
        field :text, Fhir.Narrative
        field :total, [Fhir.ClaimResponseTotal], default: []
        field :traceNumber, [Fhir.Identifier], default: []
        field :type, Fhir.CodeableConcept
        field :use, :string
  end
end
