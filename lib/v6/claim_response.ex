defmodule Fhir.v6().ClaimResponse do
  use TypedStruct

  typedstruct do
    field(:_created, Fhir.v6().Element)
    field(:_disposition, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_outcome, Fhir.v6().Element)
    field(:_preAuthRef, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:_use, Fhir.v6().Element)
    field(:addItem, [Fhir.v6().ClaimResponseAddItem], default: [])
    field(:adjudication, [Fhir.v6().ClaimResponseAdjudication], default: [])
    field(:communicationRequest, [Fhir.v6().Reference], default: [])
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:created, :datetime)
    field(:decision, Fhir.v6().CodeableConcept)
    field(:diagnosisRelatedGroup, Fhir.v6().CodeableConcept)
    field(:disposition, :string)
    field(:encounter, [Fhir.v6().Reference], default: [])
    field(:error, [Fhir.v6().ClaimResponseError], default: [])
    field(:event, [Fhir.v6().ClaimResponseEvent], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:form, Fhir.v6().Attachment)
    field(:formCode, Fhir.v6().CodeableConcept)
    field(:fundsReserve, Fhir.v6().CodeableConcept)
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:insurance, [Fhir.v6().ClaimResponseInsurance], default: [])
    field(:insurer, Fhir.v6().Reference)
    field(:item, [Fhir.v6().ClaimResponseItem], default: [])
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:outcome, :string)
    field(:patient, Fhir.v6().Reference)
    field(:payeeType, Fhir.v6().CodeableConcept)
    field(:payment, Fhir.v6().ClaimResponsePayment)
    field(:preAuthPeriod, Fhir.v6().Period)
    field(:preAuthRef, :string)
    field(:processNote, [Fhir.v6().ClaimResponseProcessNote], default: [])
    field(:request, Fhir.v6().Reference)
    field(:requestor, Fhir.v6().Reference)
    field(:resourceType, :string, default: "ClaimResponse")
    field(:status, :string)
    field(:subType, Fhir.v6().CodeableConcept)
    field(:text, Fhir.v6().Narrative)
    field(:total, [Fhir.v6().ClaimResponseTotal], default: [])
    field(:traceNumber, [Fhir.v6().Identifier], default: [])
    field(:type, Fhir.v6().CodeableConcept)
    field(:use, :string)
  end
end
