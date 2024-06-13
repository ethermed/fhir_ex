defmodule Fhir.Generated.ClaimResponse do
  use TypedStruct

  typedstruct do
    field :_created, Fhir.Generated.Element
        field :_disposition, Fhir.Generated.Element
        field :_implicitRules, Fhir.Generated.Element
        field :_language, Fhir.Generated.Element
        field :_outcome, Fhir.Generated.Element
        field :_preAuthRef, Fhir.Generated.Element
        field :_status, Fhir.Generated.Element
        field :_use, Fhir.Generated.Element
        field :addItem, [Fhir.Generated.ClaimResponseAddItem], default: []
        field :adjudication, [Fhir.Generated.ClaimResponseAdjudication], default: []
        field :communicationRequest, [Fhir.Generated.Reference], default: []
        field :contained, [Fhir.Generated.ResourceList], default: []
        field :created, :datetime
        field :decision, Fhir.Generated.CodeableConcept
        field :diagnosisRelatedGroup, Fhir.Generated.CodeableConcept
        field :disposition, :string
        field :encounter, [Fhir.Generated.Reference], default: []
        field :error, [Fhir.Generated.ClaimResponseError], default: []
        field :event, [Fhir.Generated.ClaimResponseEvent], default: []
        field :extension, [Fhir.Generated.Extension], default: []
        field :form, Fhir.Generated.Attachment
        field :formCode, Fhir.Generated.CodeableConcept
        field :fundsReserve, Fhir.Generated.CodeableConcept
        field :id, :string
        field :identifier, [Fhir.Generated.Identifier], default: []
        field :implicitRules, :string
        field :insurance, [Fhir.Generated.ClaimResponseInsurance], default: []
        field :insurer, Fhir.Generated.Reference
        field :item, [Fhir.Generated.ClaimResponseItem], default: []
        field :language, :string
        field :meta, Fhir.Generated.Meta
        field :modifierExtension, [Fhir.Generated.Extension], default: []
        field :outcome, :string
        field :patient, Fhir.Generated.Reference
        field :payeeType, Fhir.Generated.CodeableConcept
        field :payment, Fhir.Generated.ClaimResponsePayment
        field :preAuthPeriod, Fhir.Generated.Period
        field :preAuthRef, :string
        field :processNote, [Fhir.Generated.ClaimResponseProcessNote], default: []
        field :request, Fhir.Generated.Reference
        field :requestor, Fhir.Generated.Reference
        field :resourceType, :string, default: "ClaimResponse"
        field :status, :string
        field :subType, Fhir.Generated.CodeableConcept
        field :text, Fhir.Generated.Narrative
        field :total, [Fhir.Generated.ClaimResponseTotal], default: []
        field :traceNumber, [Fhir.Generated.Identifier], default: []
        field :type, Fhir.Generated.CodeableConcept
        field :use, :string
  end
end
