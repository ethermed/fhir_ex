defmodule Fhir.Account do
  use TypedStruct

  typedstruct do
    field(:_calculatedAt, Fhir.Element)
    field(:_description, Fhir.Element)
    field(:_implicitRules, Fhir.Element)
    field(:_language, Fhir.Element)
    field(:_name, Fhir.Element)
    field(:_status, Fhir.Element)
    field(:balance, [Fhir.AccountBalance], default: [])
    field(:billingStatus, Fhir.CodeableConcept)
    field(:calculatedAt, :timestamp)
    field(:contained, [Fhir.ResourceList], default: [])
    field(:coverage, [Fhir.AccountCoverage], default: [])
    field(:currency, Fhir.CodeableConcept)
    field(:description, :string)
    field(:diagnosis, [Fhir.AccountDiagnosis], default: [])
    field(:extension, [Fhir.Extension], default: [])
    field(:guarantor, [Fhir.AccountGuarantor], default: [])
    field(:id, :string)
    field(:identifier, [Fhir.Identifier], default: [])
    field(:implicitRules, :string)
    field(:language, :string)
    field(:meta, Fhir.Meta)
    field(:modifierExtension, [Fhir.Extension], default: [])
    field(:name, :string)
    field(:owner, Fhir.Reference)
    field(:procedure, [Fhir.AccountProcedure], default: [])
    field(:relatedAccount, [Fhir.AccountRelatedAccount], default: [])
    field(:resourceType, :string, default: "Account")
    field(:servicePeriod, Fhir.Period)
    field(:status, :string)
    field(:subject, [Fhir.Reference], default: [])
    field(:text, Fhir.Narrative)
    field(:type, Fhir.CodeableConcept)
  end
end
