defmodule Fhir.v6().Account do
  use TypedStruct

  typedstruct do
    field(:_calculatedAt, Fhir.v6().Element)
    field(:_description, Fhir.v6().Element)
    field(:_implicitRules, Fhir.v6().Element)
    field(:_language, Fhir.v6().Element)
    field(:_name, Fhir.v6().Element)
    field(:_status, Fhir.v6().Element)
    field(:balance, [Fhir.v6().AccountBalance], default: [])
    field(:billingStatus, Fhir.v6().CodeableConcept)
    field(:calculatedAt, :timestamp)
    field(:contained, [Fhir.v6().ResourceList], default: [])
    field(:coverage, [Fhir.v6().AccountCoverage], default: [])
    field(:currency, Fhir.v6().CodeableConcept)
    field(:description, :string)
    field(:diagnosis, [Fhir.v6().AccountDiagnosis], default: [])
    field(:extension, [Fhir.v6().Extension], default: [])
    field(:guarantor, [Fhir.v6().AccountGuarantor], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.v6().Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.v6().Meta)
    field(:modifierExtension, [Fhir.v6().Extension], default: [])
    field(:name, :string)
    field(:owner, Fhir.v6().Reference)
    field(:procedure, [Fhir.v6().AccountProcedure], default: [])
    field(:relatedAccount, [Fhir.v6().AccountRelatedAccount], default: [])
    field(:resourceType, :string, default: "Account")
    field(:servicePeriod, Fhir.v6().Period)
    field(:status, :string)
    field(:subject, [Fhir.v6().Reference], default: [])
    field(:text, Fhir.v6().Narrative)
    field(:type, Fhir.v6().CodeableConcept)
  end
end
